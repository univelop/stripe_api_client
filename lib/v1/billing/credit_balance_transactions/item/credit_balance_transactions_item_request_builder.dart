// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/billing/credit_balance_transaction.dart';
import '../../../../models/error.dart';
import './credit_balance_transactions_get_request_body.dart';
import './credit_balance_transactions_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\credit_balance_transactions\{id}
class CreditBalanceTransactionsItemRequestBuilder
    extends BaseRequestBuilder<CreditBalanceTransactionsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CreditBalanceTransactionsItemRequestBuilder clone() {
    return CreditBalanceTransactionsItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditBalanceTransactionsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditBalanceTransactionsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_balance_transactions/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [CreditBalanceTransactionsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditBalanceTransactionsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_balance_transactions/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a credit balance transaction.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditBalanceTransaction?> getAsync(
      CreditBalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditBalanceTransactionsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditBalanceTransaction>(requestInfo,
        CreditBalanceTransaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a credit balance transaction.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      CreditBalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditBalanceTransactionsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<
            CreditBalanceTransactionsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditBalanceTransactionsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
