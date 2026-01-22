// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/webhook_endpoint.dart';
import './item/with_webhook_endpoint_item_request_builder.dart';
import './webhook_endpoints_get_request_body.dart';
import './webhook_endpoints_get_response.dart';
import './webhook_endpoints_post_request_body.dart';
import './webhook_endpoints_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\webhook_endpoints
class WebhookEndpointsRequestBuilder
    extends BaseRequestBuilder<WebhookEndpointsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.webhook_endpoints.item collection
  ///  [webhookEndpoint] Unique identifier of the item
  WithWebhookEndpointItemRequestBuilder byWebhookEndpoint(
      String webhookEndpoint) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('webhook_endpoint', () => webhookEndpoint);
    return WithWebhookEndpointItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WebhookEndpointsRequestBuilder clone() {
    return WebhookEndpointsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WebhookEndpointsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WebhookEndpointsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/webhook_endpoints{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [WebhookEndpointsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WebhookEndpointsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/webhook_endpoints{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your webhook endpoints.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WebhookEndpointsGetResponse?> getAsync(
      WebhookEndpointsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WebhookEndpointsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WebhookEndpointsGetResponse>(requestInfo,
        WebhookEndpointsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>A webhook endpoint must have a <code>url</code> and a list of <code>enabled_events</code>. You may optionally specify the Boolean <code>connect</code> parameter. If set to true, then a Connect webhook endpoint that notifies the specified <code>url</code> about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified <code>url</code> only about events from your account is created. You can also create webhook endpoints in the <a href="https://dashboard.stripe.com/account/webhooks">webhooks settings</a> section of the Dashboard.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WebhookEndpoint?> postAsync(WebhookEndpointsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WebhookEndpoint>(requestInfo,
        WebhookEndpoint.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your webhook endpoints.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WebhookEndpointsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WebhookEndpointsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WebhookEndpointsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WebhookEndpointsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>A webhook endpoint must have a <code>url</code> and a list of <code>enabled_events</code>. You may optionally specify the Boolean <code>connect</code> parameter. If set to true, then a Connect webhook endpoint that notifies the specified <code>url</code> about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified <code>url</code> only about events from your account is created. You can also create webhook endpoints in the <a href="https://dashboard.stripe.com/account/webhooks">webhooks settings</a> section of the Dashboard.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WebhookEndpointsPostRequestBody body,
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
