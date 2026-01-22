// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the credit balance summary for a customer.</p>
class CreditBalanceSummaryRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The customer whose credit balance summary you're retrieving.
  String? customer;

  ///  The account representing the customer whose credit balance summary you're retrieving.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  The filter criteria for the credit balance summary.
  String? filter;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'customer': customer,
      'customer_account': customerAccount,
      'expand': expand,
      'filter': filter,
    };
  }
}
