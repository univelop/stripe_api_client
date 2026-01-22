// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/confirmation_token.dart';
import '../../../models/error.dart';
import './confirmation_tokens_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\confirmation_tokens
class ConfirmationTokensRequestBuilder
    extends BaseRequestBuilder<ConfirmationTokensRequestBuilder> {
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
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/confirmation_tokens",
            pathParameters);

  /// Instantiates a new [ConfirmationTokensRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmationTokensRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/confirmation_tokens",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a test mode Confirmation Token server side for your integration tests.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ConfirmationToken?> postAsync(ConfirmationTokensPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ConfirmationToken>(requestInfo,
        ConfirmationToken.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a test mode Confirmation Token server side for your integration tests.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      ConfirmationTokensPostRequestBody body,
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
