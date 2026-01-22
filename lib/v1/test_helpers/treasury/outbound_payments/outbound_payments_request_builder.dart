// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/outbound_payments_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\treasury\outbound_payments
class OutboundPaymentsRequestBuilder
    extends BaseRequestBuilder<OutboundPaymentsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.treasury.outbound_payments.item collection
  ///  [id] Unique identifier of the item
  OutboundPaymentsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return OutboundPaymentsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  OutboundPaymentsRequestBuilder clone() {
    return OutboundPaymentsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OutboundPaymentsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/outbound_payments",
            pathParameters);

  /// Instantiates a new [OutboundPaymentsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/outbound_payments",
            {RequestInformation.rawUrlKey: rawUrl});
}
