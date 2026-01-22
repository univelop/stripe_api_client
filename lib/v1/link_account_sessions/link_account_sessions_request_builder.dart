// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/financial_connections/session.dart';
import './item/with_session_item_request_builder.dart';
import './link_account_sessions_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\link_account_sessions
class LinkAccountSessionsRequestBuilder
    extends BaseRequestBuilder<LinkAccountSessionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.link_account_sessions.item collection
  ///  [session] Unique identifier of the item
  WithSessionItemRequestBuilder bySession(String session) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('session', () => session);
    return WithSessionItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  LinkAccountSessionsRequestBuilder clone() {
    return LinkAccountSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [LinkAccountSessionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LinkAccountSessionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/link_account_sessions",
            pathParameters);

  /// Instantiates a new [LinkAccountSessionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LinkAccountSessionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/link_account_sessions",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>To launch the Financial Connections authorization flow, create a <code>Session</code>. The session’s <code>client_secret</code> can be used to launch the flow using Stripe.js.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Session?> postAsync(LinkAccountSessionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Session>(
        requestInfo, Session.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>To launch the Financial Connections authorization flow, create a <code>Session</code>. The session’s <code>client_secret</code> can be used to launch the flow using Stripe.js.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      LinkAccountSessionsPostRequestBody body,
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
