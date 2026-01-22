import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

/// Downloads the Stripe OpenAPI specification from GitHub
Future<String> downloadStripeOpenApiSpec() async {
  const specUrl =
      'https://raw.githubusercontent.com/stripe/openapi/master/latest/spec3.json';
  
  final response = await http.get(Uri.parse(specUrl));
  if (response.statusCode != 200) {
    throw Exception(
        'Failed to download OpenAPI spec: ${response.statusCode} ${response.reasonPhrase}');
  }
  
  return response.body;
}

/// Checks if openapi-generator-cli is available
Future<bool> isOpenApiGeneratorAvailable() async {
  try {
    final result = await Process.run(
      'openapi-generator-cli',
      ['--version'],
      runInShell: true,
    );
    return result.exitCode == 0;
  } catch (e) {
    return false;
  }
}

/// Executes openapi-generator-cli to generate Dart code
Future<void> generateDartCode({
  required String specContent,
  required String outputDir,
  required String packageName,
  required String packageDescription,
  required String packageAuthor,
}) async {
  // Check if openapi-generator-cli is available
  final isAvailable = await isOpenApiGeneratorAvailable();
  if (!isAvailable) {
    throw Exception(
        'openapi-generator-cli is not available. Please install it using one of:\n'
        '  npm: npm install -g @openapitools/openapi-generator-cli\n'
        '  pip: pip install openapi-generator-cli\n'
        '  brew: brew install openapi-generator\n'
        'See https://github.com/OpenAPITools/openapi-generator?tab=readme-ov-file#1---installation');
  }

  // Create temporary spec file
  final tempSpecFile = File(path.join(outputDir, 'temp_spec.json'));
  await tempSpecFile.create(recursive: true);
  await tempSpecFile.writeAsString(specContent);

  // Create output directory
  final outputDirectory = Directory(path.join(outputDir, '.tmp_generated'));
  if (await outputDirectory.exists()) {
    await outputDirectory.delete(recursive: true);
  }
  await outputDirectory.create(recursive: true);

  // Execute openapi-generator-cli
  final result = await Process.run(
    'openapi-generator-cli',
    [
      'generate',
      '-i',
      tempSpecFile.path,
      '-g',
      'dart-dio',
      '-o',
      outputDirectory.path,
      '-p',
      'pubName=$packageName',
      '-p',
      'pubDescription=$packageDescription',
      '-p',
      'pubAuthor=$packageAuthor',
    ],
    runInShell: true,
  );

  // Clean up temp spec file
  if (await tempSpecFile.exists()) {
    await tempSpecFile.delete();
  }

  if (result.exitCode != 0) {
    throw Exception(
        'openapi-generator-cli failed:\n${result.stderr}\n${result.stdout}');
  }
}

/// Merges the generated pubspec.yaml with the base pubspec.yaml
/// Preserves metadata from base (name, version, homepage, repository, environment)
/// Uses dependencies and dev_dependencies from generated
Future<void> mergePubspecYaml({
  required String basePubspecPath,
  required String generatedPubspecPath,
  required String outputPath,
}) async {
  final basePubspec = File(basePubspecPath);
  final generatedPubspec = File(generatedPubspecPath);
  
  if (!await basePubspec.exists() || !await generatedPubspec.exists()) {
    throw Exception('pubspec.yaml files not found');
  }

  final baseContent = await basePubspec.readAsString();
  final generatedContent = await generatedPubspec.readAsString();

  // Extract metadata keys from base that we want to preserve
  final metadataKeys = [
    'name',
    'version',
    'description',
    'homepage',
    'repository',
    'environment',
  ];

  // Start with generated content
  var merged = generatedContent;
  
  // Extract and replace metadata from base
  final baseLines = baseContent.split('\n');
  for (final line in baseLines) {
    final trimmed = line.trim();
    if (trimmed.isEmpty || trimmed.startsWith('#')) continue;
    
    for (final key in metadataKeys) {
      if (trimmed.startsWith('$key:')) {
        // Find and replace this key in generated content
        final regex = RegExp('^\\s*$key:.*\$', multiLine: true);
        if (regex.hasMatch(merged)) {
          merged = merged.replaceFirst(regex, line);
        } else {
          // If key doesn't exist in generated, add it after name
          final nameRegex = RegExp('^\\s*name:.*\$', multiLine: true);
          if (nameRegex.hasMatch(merged)) {
            merged = merged.replaceFirst(nameRegex, '${nameRegex.firstMatch(merged)?.group(0)}\n$line');
          }
        }
        break;
      }
    }
  }

  await File(outputPath).writeAsString(merged);
}

/// Copies generated lib/ contents to root lib/
Future<void> copyGeneratedLib({
  required String generatedLibPath,
  required String rootLibPath,
}) async {
  final generatedLib = Directory(generatedLibPath);
  final rootLib = Directory(rootLibPath);

  if (!await generatedLib.exists()) {
    throw Exception('Generated lib directory not found: $generatedLibPath');
  }

  // Create root lib if it doesn't exist
  if (!await rootLib.exists()) {
    await rootLib.create(recursive: true);
  }

  // Copy all files from generated lib to root lib
  await for (final entity in generatedLib.list(recursive: true)) {
    if (entity is File) {
      final relativePath = path.relative(entity.path, from: generatedLib.path);
      final targetPath = path.join(rootLibPath, relativePath);
      final targetFile = File(targetPath);
      
      // Create parent directories if needed
      await targetFile.parent.create(recursive: true);
      
      // Copy file
      await entity.copy(targetPath);
    }
  }
}

/// Formats generated Dart code
Future<void> formatDartCode(String libPath) async {
  try {
    await Process.run(
      'dart',
      ['format', libPath],
      runInShell: true,
    );
  } catch (e) {
    // Formatting is optional, don't fail if it's not available
    print('Warning: Could not format code: $e');
  }
}

/// Cleans up temporary generation directory
Future<void> cleanupTempDirectory(String tempDir) async {
  final dir = Directory(tempDir);
  if (await dir.exists()) {
    await dir.delete(recursive: true);
  }
}
