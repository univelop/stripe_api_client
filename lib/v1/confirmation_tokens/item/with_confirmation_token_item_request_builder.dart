// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/confirmation_token.dart';
import '../../../models/error.dart';
import './with_confirmation_token_get_request_body.dart';
import './with_confirmation_token_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\confirmation_tokens\{confirmation_token}
class WithConfirmationTokenItemRequestBuilder
    extends BaseRequestBuilder<WithConfirmationTokenItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithConfirmationTokenItemRequestBuilder clone() {
    return WithConfirmationTokenItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithConfirmationTokenItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithConfirmationTokenItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/confirmation_tokens/{confirmation_token}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithConfirmationTokenItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithConfirmationTokenItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/confirmation_tokens/{confirmation_token}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves an existing ConfirmationToken object</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ConfirmationToken?> getAsync(WithConfirmationTokenGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithConfirmationTokenItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ConfirmationToken>(requestInfo,
        ConfirmationToken.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an existing ConfirmationToken object</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithConfirmationTokenGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithConfirmationTokenItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithConfirmationTokenItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithConfirmationTokenItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
