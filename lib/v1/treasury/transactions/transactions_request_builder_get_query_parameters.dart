// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_order_by_query_parameter_type.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Retrieves a list of Transaction objects.</p>
class TransactionsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return Transactions that were created during the given date interval.
  int? created;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  Returns objects associated with this FinancialAccount.
  /// @QueryParameter('financial_account')
  String? financialAccount;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  The results are in reverse chronological order by `created` or `posted_at`. The default is `created`.
  /// @QueryParameter('order_by')
  GetOrderByQueryParameterType? orderBy;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return Transactions that have the given status: `open`, `posted`, or `void`.
  GetStatusQueryParameterType? status;

  ///  A filter for the `status_transitions.posted_at` timestamp. When using this filter, `status=posted` and `order_by=posted_at` must also be specified.
  /// @QueryParameter('status_transitions')
  String? statusTransitions;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'financial_account': financialAccount,
      'limit': limit,
      'order_by': orderBy,
      'starting_after': startingAfter,
      'status': status,
      'status_transitions': statusTransitions,
    };
  }
}
