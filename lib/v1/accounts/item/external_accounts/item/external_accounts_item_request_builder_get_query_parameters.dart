// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieve a specified external account for a given account.</p>
class ExternalAccountsItemRequestBuilderGetQueryParameters
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
