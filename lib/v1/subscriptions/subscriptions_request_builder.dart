// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/subscription.dart';
import './item/subscription_exposed_item_request_builder.dart';
import './search/search_request_builder.dart';
import './subscriptions_get_request_body.dart';
import './subscriptions_get_response.dart';
import './subscriptions_post_request_body.dart';
import './subscriptions_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscriptions
class SubscriptionsRequestBuilder
    extends BaseRequestBuilder<SubscriptionsRequestBuilder> {
  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.subscriptions.item collection
  ///  [subscriptionExposedId] Unique identifier of the item
  SubscriptionExposedItemRequestBuilder bySubscriptionExposedId(
      String subscriptionExposedId) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent(
        'subscription_exposed_%2Did', () => subscriptionExposedId);
    return SubscriptionExposedItemRequestBuilder(urlTplParams, requestAdapter);
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
            "{+baseurl}/v1/subscriptions{?automatic_tax*,collection_method*,created*,current_period_end*,current_period_start*,customer*,customer_account*,ending_before*,expand*,limit*,price*,starting_after*,status*,test_clock*}",
            pathParameters);

  /// Instantiates a new [SubscriptionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions{?automatic_tax*,collection_method*,created*,current_period_end*,current_period_start*,customer*,customer_account*,ending_before*,expand*,limit*,price*,starting_after*,status*,test_clock*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify <code>status=canceled</code>.</p>
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

  /// <p>Creates a new subscription on an existing customer. Each customer can have up to 500 active or scheduled subscriptions.</p><p>When you create a subscription with <code>collection_method=charge_automatically</code>, the first invoice is finalized as part of the request.The <code>payment_behavior</code> parameter determines the exact behavior of the initial payment.</p><p>To start subscriptions where the first invoice always begins in a <code>draft</code> status, use <a href="/docs/billing/subscriptions/subscription-schedules#managing">subscription schedules</a> instead.Schedules provide the flexibility to model more complex billing configurations that change over time.</p>
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

  /// <p>By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify <code>status=canceled</code>.</p>
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

  /// <p>Creates a new subscription on an existing customer. Each customer can have up to 500 active or scheduled subscriptions.</p><p>When you create a subscription with <code>collection_method=charge_automatically</code>, the first invoice is finalized as part of the request.The <code>payment_behavior</code> parameter determines the exact behavior of the initial payment.</p><p>To start subscriptions where the first invoice always begins in a <code>draft</code> status, use <a href="/docs/billing/subscriptions/subscription-schedules#managing">subscription schedules</a> instead.Schedules provide the flexibility to model more complex billing configurations that change over time.</p>
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
