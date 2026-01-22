// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves an existing source object. Supply the unique source ID from a source creation request and Stripe will return the corresponding up-to-date source object information.</p>
class WithSourceItemRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The client secret of the source. Required if a publishable key is used to retrieve the source.
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
