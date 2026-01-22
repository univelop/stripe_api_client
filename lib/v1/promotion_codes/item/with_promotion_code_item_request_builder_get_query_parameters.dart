// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing <code>code</code> use <a href="/docs/api/promotion_codes/list">list</a> with the desired <code>code</code>.</p>
class WithPromotionCodeItemRequestBuilderGetQueryParameters
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
