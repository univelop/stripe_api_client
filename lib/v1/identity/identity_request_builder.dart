// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './verification_reports/verification_reports_request_builder.dart';
import './verification_sessions/verification_sessions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\identity
class IdentityRequestBuilder
    extends BaseRequestBuilder<IdentityRequestBuilder> {
  ///  The verification_reports property
  VerificationReportsRequestBuilder get verificationReports {
    return VerificationReportsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The verification_sessions property
  VerificationSessionsRequestBuilder get verificationSessions {
    return VerificationSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  IdentityRequestBuilder clone() {
    return IdentityRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [IdentityRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IdentityRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/identity", pathParameters);

  /// Instantiates a new [IdentityRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IdentityRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/identity",
            {RequestInformation.rawUrlKey: rawUrl});
}
