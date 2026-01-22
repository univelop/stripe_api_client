// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './service/service_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\fabric
class FabricRequestBuilder extends BaseRequestBuilder<FabricRequestBuilder> {
  ///  The service property
  ServiceRequestBuilder get service {
    return ServiceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FabricRequestBuilder clone() {
    return FabricRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FabricRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FabricRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/fabric", pathParameters);

  /// Instantiates a new [FabricRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FabricRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/fabric",
            {RequestInformation.rawUrlKey: rawUrl});
}
