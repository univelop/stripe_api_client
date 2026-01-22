// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of ReceivedCredits.</p>
class ReceivedCreditsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  The FinancialAccount that received the funds.
  /// @QueryParameter('financial_account')
  String? financialAccount;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return ReceivedCredits described by the flow.
  /// @QueryParameter('linked_flows')
  String? linkedFlows;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return ReceivedCredits that have the given status: `succeeded` or `failed`.
  GetStatusQueryParameterType? status;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'ending_before': endingBefore,
      'expand': expand,
      'financial_account': financialAccount,
      'limit': limit,
      'linked_flows': linkedFlows,
      'starting_after': startingAfter,
      'status': status,
    };
  }
}
