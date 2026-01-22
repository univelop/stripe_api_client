// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_report_type_item_request_builder.dart';
import './report_types_get_request_body.dart';
import './report_types_get_response.dart';
import './report_types_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reporting\report_types
class ReportTypesRequestBuilder
    extends BaseRequestBuilder<ReportTypesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.reporting.report_types.item collection
  ///  [reportType] Unique identifier of the item
  WithReportTypeItemRequestBuilder byReportType(String reportType) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('report_type', () => reportType);
    return WithReportTypeItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReportTypesRequestBuilder clone() {
    return ReportTypesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReportTypesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportTypesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/reporting/report_types{?expand*}",
            pathParameters);

  /// Instantiates a new [ReportTypesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportTypesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/reporting/report_types{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a full list of Report Types.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReportTypesGetResponse?> getAsync(ReportTypesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReportTypesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReportTypesGetResponse>(requestInfo,
        ReportTypesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a full list of Report Types.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReportTypesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReportTypesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReportTypesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReportTypesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
