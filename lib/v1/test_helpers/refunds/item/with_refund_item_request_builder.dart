// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './expire/expire_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\refunds\{refund}
class WithRefundItemRequestBuilder
    extends BaseRequestBuilder<WithRefundItemRequestBuilder> {
  ///  The expire property
  ExpireRequestBuilder get expire {
    return ExpireRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithRefundItemRequestBuilder clone() {
    return WithRefundItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithRefundItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithRefundItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/refunds/{refund}",
            pathParameters);

  /// Instantiates a new [WithRefundItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithRefundItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/refunds/{refund}",
            {RequestInformation.rawUrlKey: rawUrl});
}
