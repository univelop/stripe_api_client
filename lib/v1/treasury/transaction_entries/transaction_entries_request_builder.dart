// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/transaction_entries_item_request_builder.dart';
import './transaction_entries_get_request_body.dart';
import './transaction_entries_get_response.dart';
import './transaction_entries_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\transaction_entries
class TransactionEntriesRequestBuilder
    extends BaseRequestBuilder<TransactionEntriesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.transaction_entries.item collection
  ///  [id] Unique identifier of the item
  TransactionEntriesItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return TransactionEntriesItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TransactionEntriesRequestBuilder clone() {
    return TransactionEntriesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TransactionEntriesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionEntriesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/transaction_entries?financial_account={financial_account}{&created*,effective_at*,ending_before*,expand*,limit*,order_by*,starting_after*,transaction*}",
            pathParameters);

  /// Instantiates a new [TransactionEntriesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TransactionEntriesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/transaction_entries?financial_account={financial_account}{&created*,effective_at*,ending_before*,expand*,limit*,order_by*,starting_after*,transaction*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a list of TransactionEntry objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TransactionEntriesGetResponse?> getAsync(
      Transaction_entriesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TransactionEntriesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TransactionEntriesGetResponse>(
        requestInfo,
        TransactionEntriesGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Retrieves a list of TransactionEntry objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      Transaction_entriesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TransactionEntriesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TransactionEntriesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => TransactionEntriesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
