// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/customer_cash_balance_transaction.dart';
import '../../../../../models/error.dart';
import './fund_cash_balance_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\customers\{customer}\fund_cash_balance
class FundCashBalanceRequestBuilder
    extends BaseRequestBuilder<FundCashBalanceRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  FundCashBalanceRequestBuilder clone() {
    return FundCashBalanceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FundCashBalanceRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FundCashBalanceRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/customers/{customer}/fund_cash_balance",
            pathParameters);

  /// Instantiates a new [FundCashBalanceRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FundCashBalanceRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/customers/{customer}/fund_cash_balance",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Create an incoming testmode bank transfer</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CustomerCashBalanceTransaction?> postAsync(
      FundCashBalancePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CustomerCashBalanceTransaction>(
        requestInfo,
        CustomerCashBalanceTransaction.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Create an incoming testmode bank transfer</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      FundCashBalancePostRequestBody body,
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
