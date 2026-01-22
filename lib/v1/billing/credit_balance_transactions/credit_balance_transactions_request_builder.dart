// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './credit_balance_transactions_get_request_body.dart';
import './credit_balance_transactions_get_response.dart';
import './credit_balance_transactions_request_builder_get_query_parameters.dart';
import './item/credit_balance_transactions_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\credit_balance_transactions
class CreditBalanceTransactionsRequestBuilder
    extends BaseRequestBuilder<CreditBalanceTransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.billing.credit_balance_transactions.item collection
  ///  [id] Unique identifier for the object.
  CreditBalanceTransactionsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return CreditBalanceTransactionsItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CreditBalanceTransactionsRequestBuilder clone() {
    return CreditBalanceTransactionsRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditBalanceTransactionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditBalanceTransactionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_balance_transactions{?credit_grant*,customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [CreditBalanceTransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditBalanceTransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_balance_transactions{?credit_grant*,customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a list of credit balance transactions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditBalanceTransactionsGetResponse?> getAsync(
      CreditBalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditBalanceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditBalanceTransactionsGetResponse>(
        requestInfo,
        CreditBalanceTransactionsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Retrieve a list of credit balance transactions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      CreditBalanceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditBalanceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<CreditBalanceTransactionsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => CreditBalanceTransactionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
