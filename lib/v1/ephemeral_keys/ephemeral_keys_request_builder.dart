// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/ephemeral_key.dart';
import '../../models/error.dart';
import './ephemeral_keys_post_request_body.dart';
import './item/with_key_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\ephemeral_keys
class EphemeralKeysRequestBuilder
    extends BaseRequestBuilder<EphemeralKeysRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.ephemeral_keys.item collection
  ///  [key] Unique identifier of the item
  WithKeyItemRequestBuilder byKey(String key) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('key', () => key);
    return WithKeyItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  EphemeralKeysRequestBuilder clone() {
    return EphemeralKeysRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [EphemeralKeysRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EphemeralKeysRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/ephemeral_keys", pathParameters);

  /// Instantiates a new [EphemeralKeysRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EphemeralKeysRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/ephemeral_keys",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a short-lived API key for a given resource.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<EphemeralKey?> postAsync(EphemeralKeysPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<EphemeralKey>(
        requestInfo, EphemeralKey.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a short-lived API key for a given resource.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(EphemeralKeysPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
