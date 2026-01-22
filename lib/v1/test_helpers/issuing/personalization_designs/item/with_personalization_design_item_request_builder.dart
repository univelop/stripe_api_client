// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './activate/activate_request_builder.dart';
import './deactivate/deactivate_request_builder.dart';
import './reject/reject_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\personalization_designs\{personalization_design}
class WithPersonalizationDesignItemRequestBuilder
    extends BaseRequestBuilder<WithPersonalizationDesignItemRequestBuilder> {
  ///  The activate property
  ActivateRequestBuilder get activate {
    return ActivateRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The deactivate property
  DeactivateRequestBuilder get deactivate {
    return DeactivateRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The reject property
  RejectRequestBuilder get reject {
    return RejectRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithPersonalizationDesignItemRequestBuilder clone() {
    return WithPersonalizationDesignItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPersonalizationDesignItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPersonalizationDesignItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/personalization_designs/{personalization_design}",
            pathParameters);

  /// Instantiates a new [WithPersonalizationDesignItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPersonalizationDesignItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/personalization_designs/{personalization_design}",
            {RequestInformation.rawUrlKey: rawUrl});
}
