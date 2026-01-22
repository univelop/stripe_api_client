// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/billing/credit_balance_summary.dart';
import '../../../models/error.dart';
import './credit_balance_summary_get_request_body.dart';
import './credit_balance_summary_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\credit_balance_summary
class CreditBalanceSummaryRequestBuilder
    extends BaseRequestBuilder<CreditBalanceSummaryRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CreditBalanceSummaryRequestBuilder clone() {
    return CreditBalanceSummaryRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditBalanceSummaryRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditBalanceSummaryRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_balance_summary?filter={filter}{&customer*,customer_account*,expand*}",
            pathParameters);

  /// Instantiates a new [CreditBalanceSummaryRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditBalanceSummaryRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_balance_summary?filter={filter}{&customer*,customer_account*,expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the credit balance summary for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditBalanceSummary?> getAsync(
      CreditBalanceSummaryGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditBalanceSummaryRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditBalanceSummary>(requestInfo,
        CreditBalanceSummary.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the credit balance summary for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      CreditBalanceSummaryGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditBalanceSummaryRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CreditBalanceSummaryRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditBalanceSummaryRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
