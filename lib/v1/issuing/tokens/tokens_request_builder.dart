// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_token_item_request_builder.dart';
import './tokens_get_request_body.dart';
import './tokens_get_response.dart';
import './tokens_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\tokens
class TokensRequestBuilder extends BaseRequestBuilder<TokensRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.tokens.item collection
  ///  [token] Unique identifier of the item
  WithTokenItemRequestBuilder byToken(String token) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('token', () => token);
    return WithTokenItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TokensRequestBuilder clone() {
    return TokensRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TokensRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TokensRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/tokens?card={card}{&created*,ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [TokensRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TokensRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/tokens?card={card}{&created*,ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all Issuing <code>Token</code> objects for a given card.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TokensGetResponse?> getAsync(TokensGetRequestBody body,
      [void Function(
              RequestConfiguration<TokensRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TokensGetResponse>(requestInfo,
        TokensGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists all Issuing <code>Token</code> objects for a given card.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TokensGetRequestBody body,
      [void Function(
              RequestConfiguration<TokensRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TokensRequestBuilderGetQueryParameters>(
        requestConfiguration, () => TokensRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
