// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_from_calculation/create_from_calculation_request_builder.dart';
import './create_reversal/create_reversal_request_builder.dart';
import './item/with_transaction_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\transactions
class TransactionsRequestBuilder
    extends BaseRequestBuilder<TransactionsRequestBuilder> {
  ///  The create_from_calculation property
  CreateFromCalculationRequestBuilder get createFromCalculation {
    return CreateFromCalculationRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The create_reversal property
  CreateReversalRequestBuilder get createReversal {
    return CreateReversalRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.tax.transactions.item collection
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
      : super(requestAdapter, "{+baseurl}/v1/tax/transactions", pathParameters);

  /// Instantiates a new [TransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/transactions",
            {RequestInformation.rawUrlKey: rawUrl});
}
