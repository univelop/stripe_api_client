// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './integration_config/integration_config_request_builder.dart';
import './subscribe/subscribe_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\fabric\service
class ServiceRequestBuilder extends BaseRequestBuilder<ServiceRequestBuilder> {
  ///  The integration_config property
  IntegrationConfigRequestBuilder get integrationConfig {
    return IntegrationConfigRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The subscribe property
  SubscribeRequestBuilder get subscribe {
    return SubscribeRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ServiceRequestBuilder clone() {
    return ServiceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ServiceRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ServiceRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/fabric/service", pathParameters);

  /// Instantiates a new [ServiceRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ServiceRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/fabric/service",
            {RequestInformation.rawUrlKey: rawUrl});
}
