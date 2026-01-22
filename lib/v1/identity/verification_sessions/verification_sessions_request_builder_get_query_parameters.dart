// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_status_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of VerificationSessions</p>
class VerificationSessionsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
  /// @QueryParameter('client_reference_id')
  String? clientReferenceId;

  ///  Only return VerificationSessions that were created during the given date interval.
  int? created;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Customer ID
  /// @QueryParameter('related_customer')
  String? relatedCustomer;

  ///  The ID of the Account representing a customer.
  /// @QueryParameter('related_customer_account')
  String? relatedCustomerAccount;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return VerificationSessions with this status. [Learn more about the lifecycle of sessions](https://docs.stripe.com/identity/how-sessions-work).
  GetStatusQueryParameterType? status;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'client_reference_id': clientReferenceId,
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'related_customer': relatedCustomer,
      'related_customer_account': relatedCustomerAccount,
      'starting_after': startingAfter,
      'status': status,
    };
  }
}
