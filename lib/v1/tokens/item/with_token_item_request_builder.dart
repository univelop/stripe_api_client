// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/token.dart';
import './with_token_get_request_body.dart';
import './with_token_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tokens\{token}
class WithTokenItemRequestBuilder
    extends BaseRequestBuilder<WithTokenItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithTokenItemRequestBuilder clone() {
    return WithTokenItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithTokenItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTokenItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tokens/{token}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithTokenItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTokenItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tokens/{token}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the token with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Token?> getAsync(WithTokenGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTokenItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Token>(
        requestInfo, Token.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the token with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithTokenGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTokenItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithTokenItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithTokenItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
