// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_outbound_transfer_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\treasury\outbound_transfers
class OutboundTransfersRequestBuilder
    extends BaseRequestBuilder<OutboundTransfersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.treasury.outbound_transfers.item collection
  ///  [outboundTransfer] Unique identifier of the item
  WithOutboundTransferItemRequestBuilder byOutboundTransfer(
      String outboundTransfer) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('outbound_transfer', () => outboundTransfer);
    return WithOutboundTransferItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  OutboundTransfersRequestBuilder clone() {
    return OutboundTransfersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OutboundTransfersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundTransfersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/outbound_transfers",
            pathParameters);

  /// Instantiates a new [OutboundTransfersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundTransfersRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/outbound_transfers",
            {RequestInformation.rawUrlKey: rawUrl});
}
