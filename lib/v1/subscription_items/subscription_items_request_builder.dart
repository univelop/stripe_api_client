// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/subscription_item.dart';
import './item/with_item_item_request_builder.dart';
import './subscription_items_get_request_body.dart';
import './subscription_items_get_response.dart';
import './subscription_items_post_request_body.dart';
import './subscription_items_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscription_items
class SubscriptionItemsRequestBuilder
    extends BaseRequestBuilder<SubscriptionItemsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.subscription_items.item collection
  ///  [item] Unique identifier of the item
  WithItemItemRequestBuilder byItem(String item) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('item', () => item);
    return WithItemItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SubscriptionItemsRequestBuilder clone() {
    return SubscriptionItemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SubscriptionItemsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionItemsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscription_items?subscription={subscription}{&ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SubscriptionItemsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionItemsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscription_items?subscription={subscription}{&ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your subscription items for a given subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionItemsGetResponse?> getAsync(
      SubscriptionItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionItemsGetResponse>(
        requestInfo,
        SubscriptionItemsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Adds a new item to an existing subscription. No existing items will be changed or replaced.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionItem?> postAsync(SubscriptionItemsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionItem>(requestInfo,
        SubscriptionItem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your subscription items for a given subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      SubscriptionItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SubscriptionItemsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => SubscriptionItemsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Adds a new item to an existing subscription. No existing items will be changed or replaced.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      SubscriptionItemsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/subscription_items',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
