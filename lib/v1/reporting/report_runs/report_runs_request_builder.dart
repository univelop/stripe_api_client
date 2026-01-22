// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/reporting/report_run.dart';
import './item/with_report_run_item_request_builder.dart';
import './report_runs_get_request_body.dart';
import './report_runs_get_response.dart';
import './report_runs_post_request_body.dart';
import './report_runs_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reporting\report_runs
class ReportRunsRequestBuilder
    extends BaseRequestBuilder<ReportRunsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.reporting.report_runs.item collection
  ///  [reportRun] Unique identifier of the item
  WithReportRunItemRequestBuilder byReportRun(String reportRun) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('report_run', () => reportRun);
    return WithReportRunItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReportRunsRequestBuilder clone() {
    return ReportRunsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReportRunsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportRunsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reporting/report_runs{?created*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ReportRunsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportRunsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reporting/report_runs{?created*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Report Runs, with the most recent appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReportRunsGetResponse?> getAsync(ReportRunsGetRequestBody body,
      [void Function(
              RequestConfiguration<ReportRunsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReportRunsGetResponse>(requestInfo,
        ReportRunsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new object and begin running the report. (Certain report types require a <a href="https://stripe.com/docs/keys#test-live-modes">live-mode API key</a>.)</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReportRun?> postAsync(ReportRunsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReportRun>(
        requestInfo, ReportRun.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Report Runs, with the most recent appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReportRunsGetRequestBody body,
      [void Function(
              RequestConfiguration<ReportRunsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReportRunsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReportRunsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new object and begin running the report. (Certain report types require a <a href="https://stripe.com/docs/keys#test-live-modes">live-mode API key</a>.)</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ReportRunsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
