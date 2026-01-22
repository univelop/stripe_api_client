// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './respond/respond_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\authorizations\{authorization}\fraud_challenges
class FraudChallengesRequestBuilder
    extends BaseRequestBuilder<FraudChallengesRequestBuilder> {
  ///  The respond property
  RespondRequestBuilder get respond {
    return RespondRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FraudChallengesRequestBuilder clone() {
    return FraudChallengesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FraudChallengesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FraudChallengesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/authorizations/{authorization}/fraud_challenges",
            pathParameters);

  /// Instantiates a new [FraudChallengesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FraudChallengesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/authorizations/{authorization}/fraud_challenges",
            {RequestInformation.rawUrlKey: rawUrl});
}
