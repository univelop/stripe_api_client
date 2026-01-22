// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.</p>
class WithTopupItemRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'expand': expand,
    };
  }
}
