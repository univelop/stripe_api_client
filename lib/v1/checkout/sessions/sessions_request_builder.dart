// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/checkout/session.dart';
import '../../../models/error.dart';
import './item/with_session_item_request_builder.dart';
import './sessions_get_request_body.dart';
import './sessions_get_response.dart';
import './sessions_post_request_body.dart';
import './sessions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\checkout\sessions
class SessionsRequestBuilder
    extends BaseRequestBuilder<SessionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.checkout.sessions.item collection
  ///  [session] Unique identifier of the item
  WithSessionItemRequestBuilder bySession(String session) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('session', () => session);
    return WithSessionItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SessionsRequestBuilder clone() {
    return SessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SessionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SessionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/checkout/sessions{?created*,customer*,customer_account*,customer_details*,ending_before*,expand*,limit*,payment_intent*,payment_link*,starting_after*,status*,subscription*}",
            pathParameters);

  /// Instantiates a new [SessionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SessionsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/checkout/sessions{?created*,customer*,customer_account*,customer_details*,ending_before*,expand*,limit*,payment_intent*,payment_link*,starting_after*,status*,subscription*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Checkout Sessions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SessionsGetResponse?> getAsync(SessionsGetRequestBody body,
      [void Function(
              RequestConfiguration<SessionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SessionsGetResponse>(requestInfo,
        SessionsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a Checkout Session object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Session?> postAsync(SessionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Session>(
        requestInfo, Session.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Checkout Sessions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SessionsGetRequestBody body,
      [void Function(
              RequestConfiguration<SessionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SessionsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => SessionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a Checkout Session object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SessionsPostRequestBody body,
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
