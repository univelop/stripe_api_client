// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/charge.dart';
import '../../../../models/error.dart';
import './capture_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\charges\{charge}\capture
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
      : super(requestAdapter, "{+baseurl}/v1/charges/{charge}/capture",
            pathParameters);

  /// Instantiates a new [CaptureRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CaptureRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/charges/{charge}/capture",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Capture the payment of an existing, uncaptured charge that was created with the <code>capture</code> option set to false.</p><p>Uncaptured payments expire a set number of days after they are created (<a href="/docs/charges/placing-a-hold">7 by default</a>), after which they are marked as refunded and capture attempts will fail.</p><p>Don’t use this method to capture a PaymentIntent-initiated charge. Use <a href="/docs/api/payment_intents/capture">Capture a PaymentIntent</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Charge?> postAsync(CapturePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Charge>(
        requestInfo, Charge.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Capture the payment of an existing, uncaptured charge that was created with the <code>capture</code> option set to false.</p><p>Uncaptured payments expire a set number of days after they are created (<a href="/docs/charges/placing-a-hold">7 by default</a>), after which they are marked as refunded and capture attempts will fail.</p><p>Don’t use this method to capture a PaymentIntent-initiated charge. Use <a href="/docs/api/payment_intents/capture">Capture a PaymentIntent</a>.</p>
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
