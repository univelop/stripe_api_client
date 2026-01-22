// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_value_grouping_window_query_parameter_type.dart';

/// auto generated
/// <p>Retrieve a list of billing meter event summaries.</p>
class EventSummariesRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  The customer for which to fetch event summaries.
  String? customer;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  The timestamp from when to stop aggregating meter events (exclusive). Must be aligned with minute boundaries.
  /// @QueryParameter('end_time')
  int? endTime;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  The timestamp from when to start aggregating meter events (inclusive). Must be aligned with minute boundaries.
  /// @QueryParameter('start_time')
  int? startTime;

  ///  Specifies what granularity to use when generating event summaries. If not specified, a single event summary would be returned for the specified time range. For hourly granularity, start and end times must align with hour boundaries (e.g., 00:00, 01:00, ..., 23:00). For daily granularity, start and end times must align with UTC day boundaries (00:00 UTC).
  /// @QueryParameter('value_grouping_window')
  GetValueGroupingWindowQueryParameterType? valueGroupingWindow;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'customer': customer,
      'ending_before': endingBefore,
      'end_time': endTime,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'start_time': startTime,
      'value_grouping_window': valueGroupingWindow,
    };
  }
}
