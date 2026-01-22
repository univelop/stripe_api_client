// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_confirmation_token_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\confirmation_tokens
class ConfirmationTokensRequestBuilder
    extends BaseRequestBuilder<ConfirmationTokensRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.confirmation_tokens.item collection
  ///  [confirmationToken] Unique identifier of the item
  WithConfirmationTokenItemRequestBuilder byConfirmationToken(
      String confirmationToken) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('confirmation_token', () => confirmationToken);
    return WithConfirmationTokenItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ConfirmationTokensRequestBuilder clone() {
    return ConfirmationTokensRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ConfirmationTokensRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmationTokensRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/confirmation_tokens",
            pathParameters);

  /// Instantiates a new [ConfirmationTokensRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmationTokensRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/confirmation_tokens",
            {RequestInformation.rawUrlKey: rawUrl});
}
