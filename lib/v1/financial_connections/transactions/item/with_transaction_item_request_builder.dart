// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/financial_connections/transaction.dart';
import './with_transaction_get_request_body.dart';
import './with_transaction_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections\transactions\{transaction}
class WithTransactionItemRequestBuilder
    extends BaseRequestBuilder<WithTransactionItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithTransactionItemRequestBuilder clone() {
    return WithTransactionItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithTransactionItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTransactionItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/transactions/{transaction}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithTransactionItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTransactionItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/transactions/{transaction}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a Financial Connections <code>Transaction</code></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Transaction?> getAsync(WithTransactionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTransactionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Transaction>(
        requestInfo, Transaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a Financial Connections <code>Transaction</code></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithTransactionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTransactionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithTransactionItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithTransactionItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
