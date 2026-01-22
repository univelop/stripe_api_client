// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of your quotes.</p>
class QuotesRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The ID of the customer whose quotes you're retrieving.
  String? customer;

  ///  The ID of the account representing the customer whose quotes you're retrieving.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  The status of the quote.
  GetStatusQueryParameterType? status;

  ///  Provides a list of quotes that are associated with the specified test clock. The response will not include quotes with test clocks if this and the customer parameter is not set.
  /// @QueryParameter('test_clock')
  String? testClock;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'customer': customer,
      'customer_account': customerAccount,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'status': status,
      'test_clock': testClock,
    };
  }
}
