// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/token.dart';
import './item/with_token_item_request_builder.dart';
import './tokens_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tokens
class TokensRequestBuilder extends BaseRequestBuilder<TokensRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.tokens.item collection
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
      : super(requestAdapter, "{+baseurl}/v1/tokens", pathParameters);

  /// Instantiates a new [TokensRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TokensRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tokens",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a single-use token that represents a bank account’s details.You can use this token with any v1 API method in place of a bank account dictionary. You can only use this token once. To do so, attach it to a <a href="#accounts">connected account</a> where <a href="/api/accounts/object#account_object-controller-requirement_collection">controller.requirement_collection</a> is <code>application</code>, which includes Custom accounts.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Token?> postAsync(TokensPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Token>(
        requestInfo, Token.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a single-use token that represents a bank account’s details.You can use this token with any v1 API method in place of a bank account dictionary. You can only use this token once. To do so, attach it to a <a href="#accounts">connected account</a> where <a href="/api/accounts/object#account_object-controller-requirement_collection">controller.requirement_collection</a> is <code>application</code>, which includes Custom accounts.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(TokensPostRequestBody body,
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
