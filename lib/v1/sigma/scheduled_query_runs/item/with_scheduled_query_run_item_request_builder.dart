// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/scheduled_query_run.dart';
import './with_scheduled_query_run_get_request_body.dart';
import './with_scheduled_query_run_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sigma\scheduled_query_runs\{scheduled_query_run}
class WithScheduledQueryRunItemRequestBuilder
    extends BaseRequestBuilder<WithScheduledQueryRunItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithScheduledQueryRunItemRequestBuilder clone() {
    return WithScheduledQueryRunItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithScheduledQueryRunItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithScheduledQueryRunItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sigma/scheduled_query_runs/{scheduled_query_run}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithScheduledQueryRunItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithScheduledQueryRunItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sigma/scheduled_query_runs/{scheduled_query_run}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an scheduled query run.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ScheduledQueryRun?> getAsync(WithScheduledQueryRunGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithScheduledQueryRunItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ScheduledQueryRun>(requestInfo,
        ScheduledQueryRun.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an scheduled query run.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithScheduledQueryRunGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithScheduledQueryRunItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithScheduledQueryRunItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithScheduledQueryRunItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
