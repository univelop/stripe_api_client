// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/identity/verification_report.dart';
import './with_report_get_request_body.dart';
import './with_report_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\identity\verification_reports\{report}
class WithReportItemRequestBuilder
    extends BaseRequestBuilder<WithReportItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithReportItemRequestBuilder clone() {
    return WithReportItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithReportItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReportItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_reports/{report}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithReportItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReportItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_reports/{report}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves an existing VerificationReport</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationReport?> getAsync(WithReportGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReportItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationReport>(requestInfo,
        VerificationReport.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an existing VerificationReport</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithReportGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReportItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithReportItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithReportItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
