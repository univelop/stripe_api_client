// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/customer_balance_transaction.dart';
import '../../../../models/error.dart';
import './balance_transactions_get_request_body.dart';
import './balance_transactions_get_response.dart';
import './balance_transactions_post_request_body.dart';
import './balance_transactions_request_builder_get_query_parameters.dart';
import './item/with_transaction_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\balance_transactions
class BalanceTransactionsRequestBuilder
    extends BaseRequestBuilder<BalanceTransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.balance_transactions.item collection
  ///  [transaction] Unique identifier of the item
  WithTransactionItemRequestBuilder byTransaction(String transaction) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('transaction', () => transaction);
    return WithTransactionItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  BalanceTransactionsRequestBuilder clone() {
    return BalanceTransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BalanceTransactionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceTransactionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/balance_transactions{?created*,ending_before*,expand*,invoice*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [BalanceTransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceTransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/balance_transactions{?created*,ending_before*,expand*,invoice*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of transactions that updated the customer’s <a href="/docs/billing/customer/balance">balances</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BalanceTransactionsGetResponse?> getAsync(
      BalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BalanceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BalanceTransactionsGetResponse>(
        requestInfo,
        BalanceTransactionsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates an immutable transaction that updates the customer’s credit <a href="/docs/billing/customer/balance">balance</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CustomerBalanceTransaction?> postAsync(
      BalanceTransactionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CustomerBalanceTransaction>(requestInfo,
        CustomerBalanceTransaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of transactions that updated the customer’s <a href="/docs/billing/customer/balance">balances</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      BalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BalanceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<BalanceTransactionsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => BalanceTransactionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates an immutable transaction that updates the customer’s credit <a href="/docs/billing/customer/balance">balance</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      BalanceTransactionsPostRequestBody body,
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
