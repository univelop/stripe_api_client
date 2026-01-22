// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Returns a list of early fraud warnings.</p>
class EarlyFraudWarningsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return early fraud warnings for the charge specified by this charge ID.
  String? charge;

  ///  Only return early fraud warnings that were created during the given date interval.
  int? created;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return early fraud warnings for charges that were created by the PaymentIntent specified by this PaymentIntent ID.
  /// @QueryParameter('payment_intent')
  String? paymentIntent;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'charge': charge,
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'payment_intent': paymentIntent,
      'starting_after': startingAfter,
    };
  }
}
