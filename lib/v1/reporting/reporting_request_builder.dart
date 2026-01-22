// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_runs/report_runs_request_builder.dart';
import './report_types/report_types_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reporting
class ReportingRequestBuilder
    extends BaseRequestBuilder<ReportingRequestBuilder> {
  ///  The report_runs property
  ReportRunsRequestBuilder get reportRuns {
    return ReportRunsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The report_types property
  ReportTypesRequestBuilder get reportTypes {
    return ReportTypesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReportingRequestBuilder clone() {
    return ReportingRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReportingRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportingRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/reporting", pathParameters);

  /// Instantiates a new [ReportingRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/reporting",
            {RequestInformation.rawUrlKey: rawUrl});
}
