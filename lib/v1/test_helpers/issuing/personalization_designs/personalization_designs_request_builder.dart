// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_personalization_design_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\personalization_designs
class PersonalizationDesignsRequestBuilder
    extends BaseRequestBuilder<PersonalizationDesignsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.issuing.personalization_designs.item collection
  ///  [personalizationDesign] Unique identifier of the item
  WithPersonalizationDesignItemRequestBuilder byPersonalizationDesign(
      String personalizationDesign) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent(
        'personalization_design', () => personalizationDesign);
    return WithPersonalizationDesignItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PersonalizationDesignsRequestBuilder clone() {
    return PersonalizationDesignsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PersonalizationDesignsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PersonalizationDesignsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/personalization_designs",
            pathParameters);

  /// Instantiates a new [PersonalizationDesignsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PersonalizationDesignsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/personalization_designs",
            {RequestInformation.rawUrlKey: rawUrl});
}
