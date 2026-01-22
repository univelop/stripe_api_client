// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Returns a list of SetupIntents.</p>
class SetupIntentsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
  /// @QueryParameter('attach_to_self')
  bool? attachToSelf;

  ///  A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  int? created;

  ///  Only return SetupIntents for the customer specified by this customer ID.
  String? customer;

  ///  Only return SetupIntents for the account specified by this customer ID.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return SetupIntents that associate with the specified payment method.
  /// @QueryParameter('payment_method')
  String? paymentMethod;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'attach_to_self': attachToSelf,
      'created': created,
      'customer': customer,
      'customer_account': customerAccount,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'payment_method': paymentMethod,
      'starting_after': startingAfter,
    };
  }
}
