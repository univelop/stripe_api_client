// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_purpose_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.</p>
class FilesRequestBuilderGetQueryParameters implements AbstractQueryParameters {
  ///  Only return files that were created during the given date interval.
  int? created;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Filter queries by the file purpose. If you don't provide a purpose, the queries return unfiltered files.
  GetPurposeQueryParameterType? purpose;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'purpose': purpose,
      'starting_after': startingAfter,
    };
  }
}
