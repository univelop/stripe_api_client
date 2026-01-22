// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_settlement_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\settlements
class SettlementsRequestBuilder
    extends BaseRequestBuilder<SettlementsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.settlements.item collection
  ///  [settlement] Unique identifier of the item
  WithSettlementItemRequestBuilder bySettlement(String settlement) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('settlement', () => settlement);
    return WithSettlementItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SettlementsRequestBuilder clone() {
    return SettlementsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SettlementsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SettlementsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/issuing/settlements",
            pathParameters);

  /// Instantiates a new [SettlementsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SettlementsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/issuing/settlements",
            {RequestInformation.rawUrlKey: rawUrl});
}
