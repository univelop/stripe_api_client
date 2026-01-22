// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_scheduled_query_run_item_request_builder.dart';
import './scheduled_query_runs_get_request_body.dart';
import './scheduled_query_runs_get_response.dart';
import './scheduled_query_runs_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sigma\scheduled_query_runs
class ScheduledQueryRunsRequestBuilder
    extends BaseRequestBuilder<ScheduledQueryRunsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.sigma.scheduled_query_runs.item collection
  ///  [scheduledQueryRun] Unique identifier of the item
  WithScheduledQueryRunItemRequestBuilder byScheduledQueryRun(
      String scheduledQueryRun) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('scheduled_query_run', () => scheduledQueryRun);
    return WithScheduledQueryRunItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ScheduledQueryRunsRequestBuilder clone() {
    return ScheduledQueryRunsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ScheduledQueryRunsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ScheduledQueryRunsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sigma/scheduled_query_runs{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ScheduledQueryRunsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ScheduledQueryRunsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sigma/scheduled_query_runs{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of scheduled query runs.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ScheduledQueryRunsGetResponse?> getAsync(
      ScheduledQueryRunsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ScheduledQueryRunsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ScheduledQueryRunsGetResponse>(
        requestInfo,
        ScheduledQueryRunsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Returns a list of scheduled query runs.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      ScheduledQueryRunsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ScheduledQueryRunsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ScheduledQueryRunsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ScheduledQueryRunsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
