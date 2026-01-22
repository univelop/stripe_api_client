// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/climate/order.dart';
import '../../../../../models/error.dart';
import './cancel_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate\orders\{order}\cancel
class CancelRequestBuilder extends BaseRequestBuilder<CancelRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CancelRequestBuilder clone() {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CancelRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CancelRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/climate/orders/{order}/cancel",
            pathParameters);

  /// Instantiates a new [CancelRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CancelRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/climate/orders/{order}/cancel",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds thereservation <code>amount_subtotal</code>, but not the <code>amount_fees</code> for user-triggered cancellations. Frontiermight cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripeprovides 90 days advance notice and refunds the <code>amount_total</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Order?> postAsync(CancelPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Order>(
        requestInfo, Order.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds thereservation <code>amount_subtotal</code>, but not the <code>amount_fees</code> for user-triggered cancellations. Frontiermight cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripeprovides 90 days advance notice and refunds the <code>amount_total</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CancelPostRequestBody body,
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
