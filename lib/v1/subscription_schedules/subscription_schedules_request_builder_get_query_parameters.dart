// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Retrieves the list of your subscription schedules.</p>
class SubscriptionSchedulesRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return subscription schedules that were created canceled the given date interval.
  /// @QueryParameter('canceled_at')
  int? canceledAt;

  ///  Only return subscription schedules that completed during the given date interval.
  /// @QueryParameter('completed_at')
  int? completedAt;

  ///  Only return subscription schedules that were created during the given date interval.
  int? created;

  ///  Only return subscription schedules for the given customer.
  String? customer;

  ///  Only return subscription schedules for the given account.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return subscription schedules that were released during the given date interval.
  /// @QueryParameter('released_at')
  int? releasedAt;

  ///  Only return subscription schedules that have not started yet.
  bool? scheduled;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'canceled_at': canceledAt,
      'completed_at': completedAt,
      'created': created,
      'customer': customer,
      'customer_account': customerAccount,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'released_at': releasedAt,
      'scheduled': scheduled,
      'starting_after': startingAfter,
    };
  }
}
