// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/balance_transaction.dart';
import '../../../../models/error.dart';
import './history_get_request_body.dart';
import './history_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\balance\history\{id}
class HistoryItemRequestBuilder
    extends BaseRequestBuilder<HistoryItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  HistoryItemRequestBuilder clone() {
    return HistoryItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [HistoryItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  HistoryItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/balance/history/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [HistoryItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  HistoryItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/balance/history/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the balance transaction with the given ID.</p><p>Note that this endpoint previously used the path <code>/v1/balance/history/:id</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BalanceTransaction?> getAsync(HistoryGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  HistoryItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BalanceTransaction>(requestInfo,
        BalanceTransaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the balance transaction with the given ID.</p><p>Note that this endpoint previously used the path <code>/v1/balance/history/:id</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(HistoryGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  HistoryItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<HistoryItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => HistoryItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
