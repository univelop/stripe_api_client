// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_collection_method_query_parameter_type.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.</p>
class InvoicesRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The collection method of the invoice to retrieve. Either `charge_automatically` or `send_invoice`.
  /// @QueryParameter('collection_method')
  GetCollectionMethodQueryParameterType? collectionMethod;

  ///  Only return invoices that were created during the given date interval.
  int? created;

  ///  Only return invoices for the customer specified by this customer ID.
  String? customer;

  ///  Only return invoices for the account representing the customer specified by this account ID.
  /// @QueryParameter('customer_account')
  String? customerAccount;

  /// @QueryParameter('due_date')
  int? dueDate;

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

  ///  The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://docs.stripe.com/billing/invoices/workflow#workflow-overview)
  GetStatusQueryParameterType? status;

  ///  Only return invoices for the subscription specified by this subscription ID.
  String? subscription;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'collection_method': collectionMethod,
      'created': created,
      'customer': customer,
      'customer_account': customerAccount,
      'due_date': dueDate,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'status': status,
      'subscription': subscription,
    };
  }
}
