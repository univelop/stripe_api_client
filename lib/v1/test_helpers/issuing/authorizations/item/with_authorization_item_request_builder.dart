// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture/capture_request_builder.dart';
import './expire/expire_request_builder.dart';
import './finalize_amount/finalize_amount_request_builder.dart';
import './fraud_challenges/fraud_challenges_request_builder.dart';
import './increment/increment_request_builder.dart';
import './reverse/reverse_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\authorizations\{authorization}
class WithAuthorizationItemRequestBuilder
    extends BaseRequestBuilder<WithAuthorizationItemRequestBuilder> {
  ///  The capture property
  CaptureRequestBuilder get capture {
    return CaptureRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The expire property
  ExpireRequestBuilder get expire {
    return ExpireRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The finalize_amount property
  FinalizeAmountRequestBuilder get finalizeAmount {
    return FinalizeAmountRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The fraud_challenges property
  FraudChallengesRequestBuilder get fraudChallenges {
    return FraudChallengesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The increment property
  IncrementRequestBuilder get increment {
    return IncrementRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The reverse property
  ReverseRequestBuilder get reverse {
    return ReverseRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithAuthorizationItemRequestBuilder clone() {
    return WithAuthorizationItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithAuthorizationItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAuthorizationItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/authorizations/{authorization}",
            pathParameters);

  /// Instantiates a new [WithAuthorizationItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAuthorizationItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/authorizations/{authorization}",
            {RequestInformation.rawUrlKey: rawUrl});
}
