// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './secrets/secrets_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\apps
class AppsRequestBuilder extends BaseRequestBuilder<AppsRequestBuilder> {
  ///  The secrets property
  SecretsRequestBuilder get secrets {
    return SecretsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  AppsRequestBuilder clone() {
    return AppsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AppsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AppsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/apps", pathParameters);

  /// Instantiates a new [AppsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AppsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/apps",
            {RequestInformation.rawUrlKey: rawUrl});
}
