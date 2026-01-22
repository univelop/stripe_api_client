// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './complete/complete_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\settlements\{settlement}
class WithSettlementItemRequestBuilder
    extends BaseRequestBuilder<WithSettlementItemRequestBuilder> {
  ///  The complete property
  CompleteRequestBuilder get complete {
    return CompleteRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithSettlementItemRequestBuilder clone() {
    return WithSettlementItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSettlementItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSettlementItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/settlements/{settlement}",
            pathParameters);

  /// Instantiates a new [WithSettlementItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSettlementItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/settlements/{settlement}",
            {RequestInformation.rawUrlKey: rawUrl});
}
