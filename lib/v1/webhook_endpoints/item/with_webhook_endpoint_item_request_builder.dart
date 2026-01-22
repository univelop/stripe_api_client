// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/deleted_webhook_endpoint.dart';
import '../../../models/error.dart';
import '../../../models/webhook_endpoint.dart';
import './with_webhook_endpoint_delete_request_body.dart';
import './with_webhook_endpoint_get_request_body.dart';
import './with_webhook_endpoint_item_request_builder_get_query_parameters.dart';
import './with_webhook_endpoint_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\webhook_endpoints\{webhook_endpoint}
class WithWebhookEndpointItemRequestBuilder
    extends BaseRequestBuilder<WithWebhookEndpointItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithWebhookEndpointItemRequestBuilder clone() {
    return WithWebhookEndpointItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithWebhookEndpointItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithWebhookEndpointItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/webhook_endpoints/{webhook_endpoint}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithWebhookEndpointItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithWebhookEndpointItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/webhook_endpoints/{webhook_endpoint}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>You can also delete webhook endpoints via the <a href="https://dashboard.stripe.com/account/webhooks">webhook endpoint management</a> page of the Stripe dashboard.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedWebhookEndpoint?> deleteAsync(
      WithWebhookEndpointDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedWebhookEndpoint>(requestInfo,
        DeletedWebhookEndpoint.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the webhook endpoint with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WebhookEndpoint?> getAsync(WithWebhookEndpointGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithWebhookEndpointItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WebhookEndpoint>(requestInfo,
        WebhookEndpoint.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the webhook endpoint. You may edit the <code>url</code>, the list of <code>enabled_events</code>, and the status of your endpoint.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WebhookEndpoint?> postAsync(WithWebhookEndpointPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WebhookEndpoint>(requestInfo,
        WebhookEndpoint.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can also delete webhook endpoints via the <a href="https://dashboard.stripe.com/account/webhooks">webhook endpoint management</a> page of the Stripe dashboard.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithWebhookEndpointDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves the webhook endpoint with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithWebhookEndpointGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithWebhookEndpointItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithWebhookEndpointItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithWebhookEndpointItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the webhook endpoint. You may edit the <code>url</code>, the list of <code>enabled_events</code>, and the status of your endpoint.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithWebhookEndpointPostRequestBody body,
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
