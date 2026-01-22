// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_transaction_item_request_builder.dart';
import './transactions_get_request_body.dart';
import './transactions_get_response.dart';
import './transactions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections\transactions
class TransactionsRequestBuilder
    extends BaseRequestBuilder<TransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.financial_connections.transactions.item collection
  ///  [transaction] Unique identifier of the item
  WithTransactionItemRequestBuilder byTransaction(String transaction) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('transaction', () => transaction);
    return WithTransactionItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TransactionsRequestBuilder clone() {
    return TransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TransactionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/transactions?account={account}{&ending_before*,expand*,limit*,starting_after*,transacted_at*,transaction_refresh*}",
            pathParameters);

  /// Instantiates a new [TransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/transactions?account={account}{&ending_before*,expand*,limit*,starting_after*,transacted_at*,transaction_refresh*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Financial Connections <code>Transaction</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TransactionsGetResponse?> getAsync(TransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TransactionsGetResponse>(requestInfo,
        TransactionsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Financial Connections <code>Transaction</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TransactionsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => TransactionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
