// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import './event_summaries_get_request_body.dart';
import './event_summaries_get_response.dart';
import './event_summaries_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\meters\{id}\event_summaries
class EventSummariesRequestBuilder
    extends BaseRequestBuilder<EventSummariesRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  EventSummariesRequestBuilder clone() {
    return EventSummariesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [EventSummariesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EventSummariesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/meters/{id}/event_summaries?customer={customer}&end_time={end_time}&start_time={start_time}{&ending_before*,expand*,limit*,starting_after*,value_grouping_window*}",
            pathParameters);

  /// Instantiates a new [EventSummariesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EventSummariesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/meters/{id}/event_summaries?customer={customer}&end_time={end_time}&start_time={start_time}{&ending_before*,expand*,limit*,starting_after*,value_grouping_window*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a list of billing meter event summaries.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<EventSummariesGetResponse?> getAsync(EventSummariesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  EventSummariesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<EventSummariesGetResponse>(requestInfo,
        EventSummariesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a list of billing meter event summaries.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(EventSummariesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  EventSummariesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<EventSummariesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => EventSummariesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
