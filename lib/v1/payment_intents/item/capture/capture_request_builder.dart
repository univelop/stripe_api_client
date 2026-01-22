// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_intent.dart';
import './capture_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents\{intent}\capture
class CaptureRequestBuilder extends BaseRequestBuilder<CaptureRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CaptureRequestBuilder clone() {
    return CaptureRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CaptureRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CaptureRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_intents/{intent}/capture",
            pathParameters);

  /// Instantiates a new [CaptureRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CaptureRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_intents/{intent}/capture",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Capture the funds of an existing uncaptured PaymentIntent when its status is <code>requires_capture</code>.</p><p>Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.</p><p>Learn more about <a href="/docs/payments/capture-later">separate authorization and capture</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> postAsync(CapturePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Capture the funds of an existing uncaptured PaymentIntent when its status is <code>requires_capture</code>.</p><p>Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.</p><p>Learn more about <a href="/docs/payments/capture-later">separate authorization and capture</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CapturePostRequestBody body,
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
