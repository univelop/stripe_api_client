// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/climate/order.dart';
import '../../../models/error.dart';
import './item/with_order_item_request_builder.dart';
import './orders_get_request_body.dart';
import './orders_get_response.dart';
import './orders_post_request_body.dart';
import './orders_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate\orders
class OrdersRequestBuilder extends BaseRequestBuilder<OrdersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.climate.orders.item collection
  ///  [order] Unique identifier of the order.
  WithOrderItemRequestBuilder byOrder(String order) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('order', () => order);
    return WithOrderItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  OrdersRequestBuilder clone() {
    return OrdersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OrdersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OrdersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/orders{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [OrdersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OrdersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/orders{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all Climate order objects. The orders are returned sorted by creation date, with themost recently created orders appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OrdersGetResponse?> getAsync(OrdersGetRequestBody body,
      [void Function(
              RequestConfiguration<OrdersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OrdersGetResponse>(requestInfo,
        OrdersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a Climate order object for a given Climate product. The order will be processed immediatelyafter creation and payment will be deducted your Stripe balance.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Order?> postAsync(OrdersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Order>(
        requestInfo, Order.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists all Climate order objects. The orders are returned sorted by creation date, with themost recently created orders appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(OrdersGetRequestBody body,
      [void Function(
              RequestConfiguration<OrdersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<OrdersRequestBuilderGetQueryParameters>(
        requestConfiguration, () => OrdersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a Climate order object for a given Climate product. The order will be processed immediatelyafter creation and payment will be deducted your Stripe balance.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(OrdersPostRequestBody body,
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
