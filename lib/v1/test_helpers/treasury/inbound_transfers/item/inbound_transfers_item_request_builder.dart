// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './fail/fail_request_builder.dart';
import './return_/return_request_builder.dart';
import './succeed/succeed_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\treasury\inbound_transfers\{id}
class InboundTransfersItemRequestBuilder
    extends BaseRequestBuilder<InboundTransfersItemRequestBuilder> {
  ///  The fail property
  FailRequestBuilder get fail {
    return FailRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The return property
  ReturnRequestBuilder get return_ {
    return ReturnRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The succeed property
  SucceedRequestBuilder get succeed {
    return SucceedRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InboundTransfersItemRequestBuilder clone() {
    return InboundTransfersItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [InboundTransfersItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InboundTransfersItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/inbound_transfers/{id}",
            pathParameters);

  /// Instantiates a new [InboundTransfersItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InboundTransfersItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/inbound_transfers/{id}",
            {RequestInformation.rawUrlKey: rawUrl});
}
