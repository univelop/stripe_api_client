// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/identity/verification_session.dart';
import './item/with_session_item_request_builder.dart';
import './verification_sessions_get_request_body.dart';
import './verification_sessions_get_response.dart';
import './verification_sessions_post_request_body.dart';
import './verification_sessions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\identity\verification_sessions
class VerificationSessionsRequestBuilder
    extends BaseRequestBuilder<VerificationSessionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.identity.verification_sessions.item collection
  ///  [session] Unique identifier of the item
  WithSessionItemRequestBuilder bySession(String session) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('session', () => session);
    return WithSessionItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  VerificationSessionsRequestBuilder clone() {
    return VerificationSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [VerificationSessionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  VerificationSessionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_sessions{?client_reference_id*,created*,ending_before*,expand*,limit*,related_customer*,related_customer_account*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [VerificationSessionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  VerificationSessionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_sessions{?client_reference_id*,created*,ending_before*,expand*,limit*,related_customer*,related_customer_account*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of VerificationSessions</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationSessionsGetResponse?> getAsync(
      VerificationSessionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  VerificationSessionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationSessionsGetResponse>(
        requestInfo,
        VerificationSessionsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates a VerificationSession object.</p><p>After the VerificationSession is created, display a verification modal using the session <code>client_secret</code> or send your users to the session’s <code>url</code>.</p><p>If your API key is in test mode, verification checks won’t actually process, though everything else will occur as if in live mode.</p><p>Related guide: <a href="/docs/identity/verify-identity-documents">Verify your users’ identity documents</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationSession?> postAsync(
      VerificationSessionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationSession>(requestInfo,
        VerificationSession.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of VerificationSessions</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      VerificationSessionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  VerificationSessionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<VerificationSessionsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => VerificationSessionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a VerificationSession object.</p><p>After the VerificationSession is created, display a verification modal using the session <code>client_secret</code> or send your users to the session’s <code>url</code>.</p><p>If your API key is in test mode, verification checks won’t actually process, though everything else will occur as if in live mode.</p><p>Related guide: <a href="/docs/identity/verify-identity-documents">Verify your users’ identity documents</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      VerificationSessionsPostRequestBody body,
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
