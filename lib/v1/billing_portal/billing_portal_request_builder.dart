// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations/configurations_request_builder.dart';
import './sessions/sessions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing_portal
class BillingPortalRequestBuilder
    extends BaseRequestBuilder<BillingPortalRequestBuilder> {
  ///  The configurations property
  ConfigurationsRequestBuilder get configurations {
    return ConfigurationsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The sessions property
  SessionsRequestBuilder get sessions {
    return SessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  BillingPortalRequestBuilder clone() {
    return BillingPortalRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BillingPortalRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BillingPortalRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing_portal", pathParameters);

  /// Instantiates a new [BillingPortalRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BillingPortalRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing_portal",
            {RequestInformation.rawUrlKey: rawUrl});
}
