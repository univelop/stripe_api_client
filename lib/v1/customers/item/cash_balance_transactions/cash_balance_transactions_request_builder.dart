// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './cash_balance_transactions_get_request_body.dart';
import './cash_balance_transactions_get_response.dart';
import './cash_balance_transactions_request_builder_get_query_parameters.dart';
import './item/with_transaction_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\cash_balance_transactions
class CashBalanceTransactionsRequestBuilder
    extends BaseRequestBuilder<CashBalanceTransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.cash_balance_transactions.item collection
  ///  [transaction] Unique identifier of the item
  WithTransactionItemRequestBuilder byTransaction(String transaction) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('transaction', () => transaction);
    return WithTransactionItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CashBalanceTransactionsRequestBuilder clone() {
    return CashBalanceTransactionsRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [CashBalanceTransactionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CashBalanceTransactionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/cash_balance_transactions{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [CashBalanceTransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CashBalanceTransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/cash_balance_transactions{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of transactions that modified the customer’s <a href="/docs/payments/customer-balance">cash balance</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CashBalanceTransactionsGetResponse?> getAsync(
      CashBalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CashBalanceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CashBalanceTransactionsGetResponse>(
        requestInfo,
        CashBalanceTransactionsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Returns a list of transactions that modified the customer’s <a href="/docs/payments/customer-balance">cash balance</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      CashBalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CashBalanceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<CashBalanceTransactionsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => CashBalanceTransactionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
