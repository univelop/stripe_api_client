// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/identity/verification_session.dart';
import './redact_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\identity\verification_sessions\{session}\redact
class RedactRequestBuilder extends BaseRequestBuilder<RedactRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RedactRequestBuilder clone() {
    return RedactRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RedactRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RedactRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_sessions/{session}/redact",
            pathParameters);

  /// Instantiates a new [RedactRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RedactRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/identity/verification_sessions/{session}/redact",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Redact a VerificationSession to remove all collected information from Stripe. This will redactthe VerificationSession and all objects related to it, including VerificationReports, Events,request logs, etc.</p><p>A VerificationSession object can be redacted when it is in <code>requires_input</code> or <code>verified</code><a href="/docs/identity/how-sessions-work">status</a>. Redacting a VerificationSession in <code>requires_action</code>state will automatically cancel it.</p><p>The redaction process may take up to four days. When the redaction process is in progress, theVerificationSession’s <code>redaction.status</code> field will be set to <code>processing</code>; when the process isfinished, it will change to <code>redacted</code> and an <code>identity.verification_session.redacted</code> eventwill be emitted.</p><p>Redaction is irreversible. Redacted objects are still accessible in the Stripe API, but all thefields that contain personal data will be replaced by the string <code>[redacted]</code> or a similarplaceholder. The <code>metadata</code> field will also be erased. Redacted objects cannot be updated orused for any purpose.</p><p><a href="/docs/identity/verification-sessions#redact">Learn more</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<VerificationSession?> postAsync(RedactPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<VerificationSession>(requestInfo,
        VerificationSession.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Redact a VerificationSession to remove all collected information from Stripe. This will redactthe VerificationSession and all objects related to it, including VerificationReports, Events,request logs, etc.</p><p>A VerificationSession object can be redacted when it is in <code>requires_input</code> or <code>verified</code><a href="/docs/identity/how-sessions-work">status</a>. Redacting a VerificationSession in <code>requires_action</code>state will automatically cancel it.</p><p>The redaction process may take up to four days. When the redaction process is in progress, theVerificationSession’s <code>redaction.status</code> field will be set to <code>processing</code>; when the process isfinished, it will change to <code>redacted</code> and an <code>identity.verification_session.redacted</code> eventwill be emitted.</p><p>Redaction is irreversible. Redacted objects are still accessible in the Stripe API, but all thefields that contain personal data will be replaced by the string <code>[redacted]</code> or a similarplaceholder. The <code>metadata</code> field will also be erased. Redacted objects cannot be updated orused for any purpose.</p><p><a href="/docs/identity/verification-sessions#redact">Learn more</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RedactPostRequestBody body,
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
