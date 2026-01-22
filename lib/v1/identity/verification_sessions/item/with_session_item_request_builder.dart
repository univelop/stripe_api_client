// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/identity/verification_session.dart';
import './cancel/cancel_request_builder.dart';
import './redact/redact_request_builder.dart';
import './with_session_get_request_body.dart';
import './with_session_item_request_builder_get_query_parameters.dart';
import './with_session_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\identity\verification_sessions\{session}
class WithSessionItemRequestBuilder
    extends BaseRequestBuilder<WithSessionItemRequestBuilder> {
  ///  The cancel property
  CancelRequestBuilder get cancel {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The redact property
  RedactRequestBuilder get redact {
    return RedactRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithSessionItemRequestBuilder clone() {
    return WithSessionItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSessionItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_sessions/{session}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSessionItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_sessions/{session}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a VerificationSession that was previously created.</p><p>When the session status is <code>requires_input</code>, you can use this method to retrieve a valid<code>client_secret</code> or <code>url</code> to allow re-submission.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationSession?> getAsync(WithSessionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSessionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationSession>(requestInfo,
        VerificationSession.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a VerificationSession object.</p><p>When the session status is <code>requires_input</code>, you can use this method to update theverification check and options.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationSession?> postAsync(WithSessionPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationSession>(requestInfo,
        VerificationSession.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a VerificationSession that was previously created.</p><p>When the session status is <code>requires_input</code>, you can use this method to retrieve a valid<code>client_secret</code> or <code>url</code> to allow re-submission.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithSessionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSessionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithSessionItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithSessionItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a VerificationSession object.</p><p>When the session status is <code>requires_input</code>, you can use this method to update theverification check and options.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithSessionPostRequestBody body,
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
