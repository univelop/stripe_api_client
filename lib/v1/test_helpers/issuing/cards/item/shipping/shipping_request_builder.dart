// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './deliver/deliver_request_builder.dart';
import './fail/fail_request_builder.dart';
import './return_/return_request_builder.dart';
import './ship/ship_request_builder.dart';
import './submit/submit_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\cards\{card}\shipping
class ShippingRequestBuilder
    extends BaseRequestBuilder<ShippingRequestBuilder> {
  ///  The deliver property
  DeliverRequestBuilder get deliver {
    return DeliverRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The fail property
  FailRequestBuilder get fail {
    return FailRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The return property
  ReturnRequestBuilder get return_ {
    return ReturnRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The ship property
  ShipRequestBuilder get ship {
    return ShipRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The submit property
  SubmitRequestBuilder get submit {
    return SubmitRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ShippingRequestBuilder clone() {
    return ShippingRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ShippingRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ShippingRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/cards/{card}/shipping",
            pathParameters);

  /// Instantiates a new [ShippingRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ShippingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/cards/{card}/shipping",
            {RequestInformation.rawUrlKey: rawUrl});
}
