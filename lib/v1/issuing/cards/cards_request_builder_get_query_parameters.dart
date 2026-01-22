// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_status_query_parameter_type.dart';
import './get_type_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of Issuing <code>Card</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
class CardsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
  ///  Only return cards belonging to the Cardholder with the provided ID.
  String? cardholder;

  ///  Only return cards that were issued during the given date interval.
  int? created;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  Only return cards that have the given expiration month.
  /// @QueryParameter('exp_month')
  int? expMonth;

  ///  Only return cards that have the given expiration year.
  /// @QueryParameter('exp_year')
  int? expYear;

  ///  Only return cards that have the given last four digits.
  String? last4;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  /// @QueryParameter('personalization_design')
  String? personalizationDesign;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return cards that have the given status. One of `active`, `inactive`, or `canceled`.
  GetStatusQueryParameterType? status;

  ///  Only return cards that have the given type. One of `virtual` or `physical`.
  GetTypeQueryParameterType? type_;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'cardholder': cardholder,
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'exp_month': expMonth,
      'exp_year': expYear,
      'last4': last4,
      'limit': limit,
      'personalization_design': personalizationDesign,
      'starting_after': startingAfter,
      'status': status,
      'type_': type_,
    };
  }
}
