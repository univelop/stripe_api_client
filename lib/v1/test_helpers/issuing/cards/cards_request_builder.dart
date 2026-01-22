// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_card_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\cards
class CardsRequestBuilder extends BaseRequestBuilder<CardsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.issuing.cards.item collection
  ///  [card] Unique identifier of the item
  WithCardItemRequestBuilder byCard(String card) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('card', () => card);
    return WithCardItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CardsRequestBuilder clone() {
    return CardsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CardsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing/cards",
            pathParameters);

  /// Instantiates a new [CardsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing/cards",
            {RequestInformation.rawUrlKey: rawUrl});
}
