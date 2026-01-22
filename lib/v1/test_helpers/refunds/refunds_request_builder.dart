// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_refund_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\refunds
class RefundsRequestBuilder extends BaseRequestBuilder<RefundsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.refunds.item collection
  ///  [refund] Unique identifier of the item
  WithRefundItemRequestBuilder byRefund(String refund) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('refund', () => refund);
    return WithRefundItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  RefundsRequestBuilder clone() {
    return RefundsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RefundsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/refunds",
            pathParameters);

  /// Instantiates a new [RefundsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/refunds",
            {RequestInformation.rawUrlKey: rawUrl});
}
