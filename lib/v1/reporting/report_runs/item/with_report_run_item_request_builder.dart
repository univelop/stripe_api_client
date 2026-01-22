// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/reporting/report_run.dart';
import './with_report_run_get_request_body.dart';
import './with_report_run_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reporting\report_runs\{report_run}
class WithReportRunItemRequestBuilder
    extends BaseRequestBuilder<WithReportRunItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithReportRunItemRequestBuilder clone() {
    return WithReportRunItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithReportRunItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReportRunItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reporting/report_runs/{report_run}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithReportRunItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReportRunItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reporting/report_runs/{report_run}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing Report Run.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReportRun?> getAsync(WithReportRunGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReportRunItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReportRun>(
        requestInfo, ReportRun.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing Report Run.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithReportRunGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReportRunItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithReportRunItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithReportRunItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
