// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the details of a SetupIntent that has previously been created. </p><p>Client-side retrieval using a publishable key is allowed when the <code>client_secret</code> is provided in the query string. </p><p>When retrieved with a publishable key, only a subset of properties will be returned. Please refer to the <a href="#setup_intent_object">SetupIntent</a> object reference for more details.</p>
class WithIntentItemRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The client secret of the SetupIntent. We require this string if you use a publishable key to retrieve the SetupIntent.
  /// @QueryParameter('client_secret')
  String? clientSecret;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'client_secret': clientSecret,
      'expand': expand,
    };
  }
}
