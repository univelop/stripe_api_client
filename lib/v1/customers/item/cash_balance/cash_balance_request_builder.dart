// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/cash_balance.dart';
import '../../../../models/error.dart';
import './cash_balance_get_request_body.dart';
import './cash_balance_post_request_body.dart';
import './cash_balance_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\cash_balance
class CashBalanceRequestBuilder
    extends BaseRequestBuilder<CashBalanceRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CashBalanceRequestBuilder clone() {
    return CashBalanceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CashBalanceRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CashBalanceRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/cash_balance{?expand*}",
            pathParameters);

  /// Instantiates a new [CashBalanceRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CashBalanceRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/cash_balance{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a customer’s cash balance.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CashBalance?> getAsync(CashBalanceGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CashBalanceRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CashBalance>(
        requestInfo, CashBalance.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Changes the settings on a customer’s cash balance.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CashBalance?> postAsync(CashBalancePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CashBalance>(
        requestInfo, CashBalance.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a customer’s cash balance.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CashBalanceGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CashBalanceRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CashBalanceRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CashBalanceRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Changes the settings on a customer’s cash balance.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CashBalancePostRequestBody body,
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
