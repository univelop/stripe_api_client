// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.</p>
class InvoiceitemsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return invoice items that were created during the given date interval.
  int? created;

  ///  The identifier of the customer whose invoice items to return. If none is provided, returns all invoice items.
  String? customer;

  ///  The identifier of the account representing the customer whose invoice items to return. If none is provided, returns all invoice items.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  Only return invoice items belonging to this invoice. If none is provided, all invoice items will be returned. If specifying an invoice, no customer identifier is needed.
  String? invoice;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Set to `true` to only show pending invoice items, which are not yet attached to any invoices. Set to `false` to only show invoice items already attached to invoices. If unspecified, no filter is applied.
  bool? pending;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'customer': customer,
      'customer_account': customerAccount,
      'ending_before': endingBefore,
      'expand': expand,
      'invoice': invoice,
      'limit': limit,
      'pending': pending,
      'starting_after': startingAfter,
    };
  }
}
