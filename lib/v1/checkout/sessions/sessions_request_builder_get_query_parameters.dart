// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of Checkout Sessions.</p>
class SessionsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return Checkout Sessions that were created during the given date interval.
  int? created;

  ///  Only return the Checkout Sessions for the Customer specified.
  String? customer;

  ///  Only return the Checkout Sessions for the Account specified.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  Only return the Checkout Sessions for the Customer details specified.
  /// @QueryParameter('customer_details')
  String? customerDetails;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return the Checkout Session for the PaymentIntent specified.
  /// @QueryParameter('payment_intent')
  String? paymentIntent;

  ///  Only return the Checkout Sessions for the Payment Link specified.
  /// @QueryParameter('payment_link')
  String? paymentLink;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return the Checkout Sessions matching the given status.
  GetStatusQueryParameterType? status;

  ///  Only return the Checkout Session for the subscription specified.
  String? subscription;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'customer': customer,
      'customer_account': customerAccount,
      'customer_details': customerDetails,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'payment_intent': paymentIntent,
      'payment_link': paymentLink,
      'starting_after': startingAfter,
      'status': status,
      'subscription': subscription,
    };
  }
}
