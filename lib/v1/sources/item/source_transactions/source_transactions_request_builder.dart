// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './item/with_source_transaction_item_request_builder.dart';
import './source_transactions_get_request_body.dart';
import './source_transactions_get_response.dart';
import './source_transactions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sources\{source}\source_transactions
class SourceTransactionsRequestBuilder
    extends BaseRequestBuilder<SourceTransactionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.sources.item.source_transactions.item collection
  ///  [sourceTransaction] Unique identifier of the item
  WithSourceTransactionItemRequestBuilder bySourceTransaction(
      String sourceTransaction) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('source_transaction', () => sourceTransaction);
    return WithSourceTransactionItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SourceTransactionsRequestBuilder clone() {
    return SourceTransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SourceTransactionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SourceTransactionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/source_transactions{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SourceTransactionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SourceTransactionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/source_transactions{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List source transactions for a given source.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SourceTransactionsGetResponse?> getAsync(
      SourceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SourceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SourceTransactionsGetResponse>(
        requestInfo,
        SourceTransactionsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>List source transactions for a given source.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      SourceTransactionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SourceTransactionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SourceTransactionsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => SourceTransactionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
