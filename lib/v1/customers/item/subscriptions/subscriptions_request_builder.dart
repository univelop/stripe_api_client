// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/subscription.dart';
import './item/with_subscription_exposed_item_request_builder.dart';
import './subscriptions_get_request_body.dart';
import './subscriptions_get_response.dart';
import './subscriptions_post_request_body.dart';
import './subscriptions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\subscriptions
class SubscriptionsRequestBuilder
    extends BaseRequestBuilder<SubscriptionsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.subscriptions.item collection
  ///  [subscriptionExposedId] Unique identifier of the item
  WithSubscriptionExposedItemRequestBuilder bySubscriptionExposedId(
      String subscriptionExposedId) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent(
        'subscription_exposed_id', () => subscriptionExposedId);
    return WithSubscriptionExposedItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SubscriptionsRequestBuilder clone() {
    return SubscriptionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SubscriptionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/subscriptions{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SubscriptionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/subscriptions{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>You can see a list of the customer’s active subscriptions. Note that the 10 most recent active subscriptions are always available by default on the customer object. If you need more than those 10, you can use the limit and starting_after parameters to page through additional subscriptions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionsGetResponse?> getAsync(SubscriptionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionsGetResponse>(requestInfo,
        SubscriptionsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new subscription on an existing customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Subscription?> postAsync(SubscriptionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Subscription>(
        requestInfo, Subscription.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can see a list of the customer’s active subscriptions. Note that the 10 most recent active subscriptions are always available by default on the customer object. If you need more than those 10, you can use the limit and starting_after parameters to page through additional subscriptions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SubscriptionsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SubscriptionsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => SubscriptionsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new subscription on an existing customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SubscriptionsPostRequestBody body,
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
