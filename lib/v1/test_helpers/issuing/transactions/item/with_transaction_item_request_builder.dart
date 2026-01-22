// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refund/refund_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\transactions\{transaction}
class WithTransactionItemRequestBuilder
    extends BaseRequestBuilder<WithTransactionItemRequestBuilder> {
  ///  The refund property
  RefundRequestBuilder get refund {
    return RefundRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithTransactionItemRequestBuilder clone() {
    return WithTransactionItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithTransactionItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTransactionItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/transactions/{transaction}",
            pathParameters);

  /// Instantiates a new [WithTransactionItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTransactionItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/transactions/{transaction}",
            {RequestInformation.rawUrlKey: rawUrl});
}
