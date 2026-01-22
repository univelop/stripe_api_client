// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping/shipping_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\cards\{card}
class WithCardItemRequestBuilder
    extends BaseRequestBuilder<WithCardItemRequestBuilder> {
  ///  The shipping property
  ShippingRequestBuilder get shipping {
    return ShippingRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithCardItemRequestBuilder clone() {
    return WithCardItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCardItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCardItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing/cards/{card}",
            pathParameters);

  /// Instantiates a new [WithCardItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCardItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing/cards/{card}",
            {RequestInformation.rawUrlKey: rawUrl});
}
