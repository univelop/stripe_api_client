// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_type_query_parameter_type.dart';

/// auto generated
/// <p>List all verification reports.</p>
class VerificationReportsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
  /// @QueryParameter('client_reference_id')
  String? clientReferenceId;

  ///  Only return VerificationReports that were created during the given date interval.
  int? created;

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

  ///  Only return VerificationReports of this type
  GetTypeQueryParameterType? type_;

  ///  Only return VerificationReports created by this VerificationSession ID. It is allowed to provide a VerificationIntent ID.
  /// @QueryParameter('verification_session')
  String? verificationSession;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'client_reference_id': clientReferenceId,
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'type_': type_,
      'verification_session': verificationSession,
    };
  }
}
