// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './requests/requests_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\forwarding
class ForwardingRequestBuilder
    extends BaseRequestBuilder<ForwardingRequestBuilder> {
  ///  The requests property
  RequestsRequestBuilder get requests {
    return RequestsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ForwardingRequestBuilder clone() {
    return ForwardingRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ForwardingRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ForwardingRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/forwarding", pathParameters);

  /// Instantiates a new [ForwardingRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ForwardingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/forwarding",
            {RequestInformation.rawUrlKey: rawUrl});
}
