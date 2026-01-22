// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './domains/domains_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\apple_pay
class ApplePayRequestBuilder
    extends BaseRequestBuilder<ApplePayRequestBuilder> {
  ///  The domains property
  DomainsRequestBuilder get domains {
    return DomainsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ApplePayRequestBuilder clone() {
    return ApplePayRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ApplePayRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApplePayRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/apple_pay", pathParameters);

  /// Instantiates a new [ApplePayRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApplePayRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/apple_pay",
            {RequestInformation.rawUrlKey: rawUrl});
}
