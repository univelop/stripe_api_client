// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/reporting/report_type.dart';
import './with_report_type_get_request_body.dart';
import './with_report_type_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reporting\report_types\{report_type}
class WithReportTypeItemRequestBuilder
    extends BaseRequestBuilder<WithReportTypeItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithReportTypeItemRequestBuilder clone() {
    return WithReportTypeItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithReportTypeItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReportTypeItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reporting/report_types/{report_type}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithReportTypeItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReportTypeItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reporting/report_types/{report_type}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a Report Type. (Certain report types require a <a href="https://stripe.com/docs/keys#test-live-modes">live-mode API key</a>.)</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReportType?> getAsync(WithReportTypeGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReportTypeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReportType>(
        requestInfo, ReportType.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a Report Type. (Certain report types require a <a href="https://stripe.com/docs/keys#test-live-modes">live-mode API key</a>.)</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithReportTypeGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReportTypeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithReportTypeItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithReportTypeItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
