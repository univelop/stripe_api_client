// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_mandate_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\mandates
class MandatesRequestBuilder
    extends BaseRequestBuilder<MandatesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.mandates.item collection
  ///  [mandate] Unique identifier of the item
  WithMandateItemRequestBuilder byMandate(String mandate) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('mandate', () => mandate);
    return WithMandateItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  MandatesRequestBuilder clone() {
    return MandatesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MandatesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MandatesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/mandates", pathParameters);

  /// Instantiates a new [MandatesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MandatesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/mandates",
            {RequestInformation.rawUrlKey: rawUrl});
}
