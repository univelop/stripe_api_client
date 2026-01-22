// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the details of an existing CreditReversal by passing the unique CreditReversal ID from either the CreditReversal creation request or CreditReversal list</p>
class WithCreditReversalItemRequestBuilderGetQueryParameters
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
