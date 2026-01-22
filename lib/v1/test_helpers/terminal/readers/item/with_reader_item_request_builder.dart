// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './present_payment_method/present_payment_method_request_builder.dart';
import './succeed_input_collection/succeed_input_collection_request_builder.dart';
import './timeout_input_collection/timeout_input_collection_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\terminal\readers\{reader}
class WithReaderItemRequestBuilder
    extends BaseRequestBuilder<WithReaderItemRequestBuilder> {
  ///  The present_payment_method property
  PresentPaymentMethodRequestBuilder get presentPaymentMethod {
    return PresentPaymentMethodRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The succeed_input_collection property
  SucceedInputCollectionRequestBuilder get succeedInputCollection {
    return SucceedInputCollectionRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The timeout_input_collection property
  TimeoutInputCollectionRequestBuilder get timeoutInputCollection {
    return TimeoutInputCollectionRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithReaderItemRequestBuilder clone() {
    return WithReaderItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithReaderItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReaderItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}",
            pathParameters);

  /// Instantiates a new [WithReaderItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReaderItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}",
            {RequestInformation.rawUrlKey: rawUrl});
}
