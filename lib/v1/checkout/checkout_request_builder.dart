// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions/sessions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\checkout
class CheckoutRequestBuilder
    extends BaseRequestBuilder<CheckoutRequestBuilder> {
  ///  The sessions property
  SessionsRequestBuilder get sessions {
    return SessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CheckoutRequestBuilder clone() {
    return CheckoutRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CheckoutRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CheckoutRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/checkout", pathParameters);

  /// Instantiates a new [CheckoutRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CheckoutRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/checkout",
            {RequestInformation.rawUrlKey: rawUrl});
}
