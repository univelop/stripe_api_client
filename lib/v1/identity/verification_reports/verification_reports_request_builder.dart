// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_report_item_request_builder.dart';
import './verification_reports_get_request_body.dart';
import './verification_reports_get_response.dart';
import './verification_reports_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\identity\verification_reports
class VerificationReportsRequestBuilder
    extends BaseRequestBuilder<VerificationReportsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.identity.verification_reports.item collection
  ///  [report] Unique identifier of the item
  WithReportItemRequestBuilder byReport(String report) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('report', () => report);
    return WithReportItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  VerificationReportsRequestBuilder clone() {
    return VerificationReportsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [VerificationReportsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  VerificationReportsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_reports{?client_reference_id*,created*,ending_before*,expand*,limit*,starting_after*,type*,verification_session*}",
            pathParameters);

  /// Instantiates a new [VerificationReportsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  VerificationReportsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_reports{?client_reference_id*,created*,ending_before*,expand*,limit*,starting_after*,type*,verification_session*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List all verification reports.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationReportsGetResponse?> getAsync(
      VerificationReportsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  VerificationReportsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationReportsGetResponse>(
        requestInfo,
        VerificationReportsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>List all verification reports.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      VerificationReportsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  VerificationReportsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<VerificationReportsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => VerificationReportsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
