// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './history_get_request_body.dart';
import './history_get_response.dart';
import './history_request_builder_get_query_parameters.dart';
import './item/history_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\balance\history
class HistoryRequestBuilder extends BaseRequestBuilder<HistoryRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.balance.history.item collection
  ///  [id] Unique identifier of the item
  HistoryItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return HistoryItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  HistoryRequestBuilder clone() {
    return HistoryRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [HistoryRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  HistoryRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/balance/history{?created*,currency*,ending_before*,expand*,limit*,payout*,source*,starting_after*,type*}",
            pathParameters);

  /// Instantiates a new [HistoryRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  HistoryRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/balance/history{?created*,currency*,ending_before*,expand*,limit*,payout*,source*,starting_after*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.</p><p>Note that this endpoint was previously called “Balance history” and used the path <code>/v1/balance/history</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<HistoryGetResponse?> getAsync(HistoryGetRequestBody body,
      [void Function(
              RequestConfiguration<HistoryRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<HistoryGetResponse>(requestInfo,
        HistoryGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.</p><p>Note that this endpoint was previously called “Balance history” and used the path <code>/v1/balance/history</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(HistoryGetRequestBody body,
      [void Function(
              RequestConfiguration<HistoryRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<HistoryRequestBuilderGetQueryParameters>(
        requestConfiguration, () => HistoryRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
