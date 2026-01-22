import 'dart:io';
import 'package:build/build.dart';
import 'package:path/path.dart' as path;
import 'src/openapi_generator.dart';

/// Builder that generates Stripe API client code from OpenAPI specification
Builder openApiBuilder(BuilderOptions options) => _OpenApiBuilder();

class _OpenApiBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        'lib/builder.dart': ['lib/.generated'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    // Only run once per build
    if (buildStep.inputId.path != 'lib/builder.dart') {
      return;
    }

    try {
      final packageRoot = path.dirname(path.dirname(buildStep.inputId.path));
      
      print('Downloading Stripe OpenAPI specification...');
      final specContent = await downloadStripeOpenApiSpec();
      
      print('Generating Dart code from OpenAPI specification...');
      await generateDartCode(
        specContent: specContent,
        outputDir: packageRoot,
        packageName: 'stripe_api_client',
        packageDescription: 'Stripe API Client generated from OpenAPI specification',
        packageAuthor: 'Univelop GmbH',
      );

      final tempGeneratedPath = path.join(packageRoot, '.tmp_generated');
      final generatedLibPath = path.join(tempGeneratedPath, 'lib');
      final rootLibPath = path.join(packageRoot, 'lib');
      
      // Copy generated lib/ to root lib/ (excluding builder files)
      print('Copying generated code to lib/...');
      await copyGeneratedLib(
        generatedLibPath: generatedLibPath,
        rootLibPath: rootLibPath,
      );

      // Merge pubspec.yaml
      print('Merging pubspec.yaml...');
      final basePubspecPath = path.join(packageRoot, 'pubspec.yaml');
      final generatedPubspecPath = path.join(tempGeneratedPath, 'pubspec.yaml');
      await mergePubspecYaml(
        basePubspecPath: basePubspecPath,
        generatedPubspecPath: generatedPubspecPath,
        outputPath: basePubspecPath,
      );

      // Handle analysis_options.yaml (replace with generated if it exists)
      final generatedAnalysisOptions = File(path.join(tempGeneratedPath, 'analysis_options.yaml'));
      if (await generatedAnalysisOptions.exists()) {
        // Merge: keep our custom rules, but update with generated ones
        // For now, we'll keep our custom one
        // In the future, could merge them intelligently
        // The generated analysis_options.yaml is available at generatedAnalysisOptions.path
      }

      // Format generated code
      print('Formatting generated code...');
      await formatDartCode(rootLibPath);

      // Cleanup temp directory
      print('Cleaning up temporary files...');
      await cleanupTempDirectory(tempGeneratedPath);

      // Create a marker file to indicate build completed
      final markerFile = File(path.join(packageRoot, 'lib', '.generated'));
      await markerFile.create(recursive: true);
      await markerFile.writeAsString(DateTime.now().toIso8601String());

      print('Code generation completed successfully!');
    } catch (e, stackTrace) {
      print('Error generating code: $e');
      print('Stack trace: $stackTrace');
      rethrow;
    }
  }
}
