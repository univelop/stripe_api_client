// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/inbound_transfers_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\treasury\inbound_transfers
class InboundTransfersRequestBuilder
    extends BaseRequestBuilder<InboundTransfersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.treasury.inbound_transfers.item collection
  ///  [id] Unique identifier of the item
  InboundTransfersItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return InboundTransfersItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InboundTransfersRequestBuilder clone() {
    return InboundTransfersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [InboundTransfersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InboundTransfersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/inbound_transfers",
            pathParameters);

  /// Instantiates a new [InboundTransfersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InboundTransfersRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/inbound_transfers",
            {RequestInformation.rawUrlKey: rawUrl});
}
