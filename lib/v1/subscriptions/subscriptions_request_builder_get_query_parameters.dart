// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_collection_method_query_parameter_type.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify <code>status=canceled</code>.</p>
class SubscriptionsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Filter subscriptions by their automatic tax settings.
  /// @QueryParameter('automatic_tax')
  String? automaticTax;

  ///  The collection method of the subscriptions to retrieve. Either `charge_automatically` or `send_invoice`.
  /// @QueryParameter('collection_method')
  GetCollectionMethodQueryParameterType? collectionMethod;

  ///  Only return subscriptions that were created during the given date interval.
  int? created;

  ///  Only return subscriptions whose minimum item current_period_end falls within the given date interval.
  /// @QueryParameter('current_period_end')
  int? currentPeriodEnd;

  ///  Only return subscriptions whose maximum item current_period_start falls within the given date interval.
  /// @QueryParameter('current_period_start')
  int? currentPeriodStart;

  ///  The ID of the customer whose subscriptions you're retrieving.
  String? customer;

  ///  The ID of the account representing the customer whose subscriptions you're retrieving.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Filter for subscriptions that contain this recurring price ID.
  String? price;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  The status of the subscriptions to retrieve. Passing in a value of `canceled` will return all canceled subscriptions, including those belonging to deleted customers. Pass `ended` to find subscriptions that are canceled and subscriptions that are expired due to [incomplete payment](https://docs.stripe.com/billing/subscriptions/overview#subscription-statuses). Passing in a value of `all` will return subscriptions of all statuses. If no value is supplied, all subscriptions that have not been canceled are returned.
  GetStatusQueryParameterType? status;

  ///  Filter for subscriptions that are associated with the specified test clock. The response will not include subscriptions with test clocks if this and the customer parameter is not set.
  /// @QueryParameter('test_clock')
  String? testClock;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'automatic_tax': automaticTax,
      'collection_method': collectionMethod,
      'created': created,
      'current_period_end': currentPeriodEnd,
      'current_period_start': currentPeriodStart,
      'customer': customer,
      'customer_account': customerAccount,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'price': price,
      'starting_after': startingAfter,
      'status': status,
      'test_clock': testClock,
    };
  }
}
