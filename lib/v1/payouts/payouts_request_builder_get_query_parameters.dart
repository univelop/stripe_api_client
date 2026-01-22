// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Returns a list of existing payouts sent to third-party bank accounts or payouts that Stripe sent to you. The payouts return in sorted order, with the most recently created payouts appearing first.</p>
class PayoutsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return payouts that are expected to arrive during the given date interval.
  /// @QueryParameter('arrival_date')
  int? arrivalDate;

  ///  Only return payouts that were created during the given date interval.
  int? created;

  ///  The ID of an external account - only return payouts sent to this external account.
  String? destination;

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

  ///  Only return payouts that have the given status: `pending`, `paid`, `failed`, or `canceled`.
  String? status;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'arrival_date': arrivalDate,
      'created': created,
      'destination': destination,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'status': status,
    };
  }
}
