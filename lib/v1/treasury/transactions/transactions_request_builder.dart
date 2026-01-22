// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/transactions_item_request_builder.dart';
import './transactions_get_request_body.dart';
import './transactions_get_response.dart';
import './transactions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\transactions
class TransactionsRequestBuilder
    extends BaseRequestBuilder<TransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.transactions.item collection
  ///  [id] Unique identifier of the item
  TransactionsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return TransactionsItemRequestBuilder(urlTplParams, requestAdapter);
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
            "{+baseurl}/v1/treasury/transactions?financial_account={financial_account}{&created*,ending_before*,expand*,limit*,order_by*,starting_after*,status*,status_transitions*}",
            pathParameters);

  /// Instantiates a new [TransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/transactions?financial_account={financial_account}{&created*,ending_before*,expand*,limit*,order_by*,starting_after*,status*,status_transitions*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a list of Transaction objects.</p>
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

  /// <p>Retrieves a list of Transaction objects.</p>
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
