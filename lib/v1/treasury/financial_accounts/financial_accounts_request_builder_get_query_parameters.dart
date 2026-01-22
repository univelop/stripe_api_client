// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of FinancialAccounts.</p>
class FinancialAccountsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return FinancialAccounts that were created during the given date interval.
  int? created;

  ///  An object ID cursor for use in pagination.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit ranging from 1 to 100 (defaults to 10).
  int? limit;

  ///  An object ID cursor for use in pagination.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return FinancialAccounts that have the given status: `open` or `closed`
  GetStatusQueryParameterType? status;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'status': status,
    };
  }
}
