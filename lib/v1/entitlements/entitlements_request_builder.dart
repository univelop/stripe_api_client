// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './active_entitlements/active_entitlements_request_builder.dart';
import './features/features_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\entitlements
class EntitlementsRequestBuilder
    extends BaseRequestBuilder<EntitlementsRequestBuilder> {
  ///  The active_entitlements property
  ActiveEntitlementsRequestBuilder get activeEntitlements {
    return ActiveEntitlementsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The features property
  FeaturesRequestBuilder get features {
    return FeaturesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  EntitlementsRequestBuilder clone() {
    return EntitlementsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [EntitlementsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EntitlementsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/entitlements", pathParameters);

  /// Instantiates a new [EntitlementsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EntitlementsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/entitlements",
            {RequestInformation.rawUrlKey: rawUrl});
}
