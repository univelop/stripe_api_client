// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './balance_transactions_get_request_body.dart';
import './balance_transactions_get_response.dart';
import './balance_transactions_request_builder_get_query_parameters.dart';
import './item/balance_transactions_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\balance_transactions
class BalanceTransactionsRequestBuilder
    extends BaseRequestBuilder<BalanceTransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.balance_transactions.item collection
  ///  [id] Unique identifier of the item
  BalanceTransactionsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return BalanceTransactionsItemRequestBuilder(urlTplParams, requestAdapter);
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
            "{+baseurl}/v1/balance_transactions{?created*,currency*,ending_before*,expand*,limit*,payout*,source*,starting_after*,type*}",
            pathParameters);

  /// Instantiates a new [BalanceTransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceTransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/balance_transactions{?created*,currency*,ending_before*,expand*,limit*,payout*,source*,starting_after*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.</p><p>Note that this endpoint was previously called “Balance history” and used the path <code>/v1/balance/history</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BalanceTransactionsGetResponse?> getAsync(
      Balance_transactionsGetRequestBody body,
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

  /// <p>Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.</p><p>Note that this endpoint was previously called “Balance history” and used the path <code>/v1/balance/history</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      Balance_transactionsGetRequestBody body,
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
}
