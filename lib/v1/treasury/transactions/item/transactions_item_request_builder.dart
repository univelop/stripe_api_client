// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/transaction.dart';
import './transactions_get_request_body.dart';
import './transactions_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\transactions\{id}
class TransactionsItemRequestBuilder
    extends BaseRequestBuilder<TransactionsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  TransactionsItemRequestBuilder clone() {
    return TransactionsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TransactionsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/transactions/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [TransactionsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/transactions/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing Transaction.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Transaction?> getAsync(TransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TransactionsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Transaction>(
        requestInfo, Transaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing Transaction.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TransactionsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TransactionsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => TransactionsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
