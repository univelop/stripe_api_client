// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Returns a list of charges you’ve previously created. The charges are returned in sorted order, with the most recent charges appearing first.</p>
class ChargesRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return charges that were created during the given date interval.
  int? created;

  ///  Only return charges for the customer specified by this customer ID.
  String? customer;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return charges that were created by the PaymentIntent specified by this PaymentIntent ID.
  /// @QueryParameter('payment_intent')
  String? paymentIntent;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return charges for this transfer group, limited to 100.
  /// @QueryParameter('transfer_group')
  String? transferGroup;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'customer': customer,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'payment_intent': paymentIntent,
      'starting_after': startingAfter,
      'transfer_group': transferGroup,
    };
  }
}
