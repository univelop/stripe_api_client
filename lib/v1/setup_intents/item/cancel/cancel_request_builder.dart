// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/setup_intent.dart';
import './cancel_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\setup_intents\{intent}\cancel
class CancelRequestBuilder extends BaseRequestBuilder<CancelRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CancelRequestBuilder clone() {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CancelRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CancelRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/setup_intents/{intent}/cancel",
            pathParameters);

  /// Instantiates a new [CancelRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CancelRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/setup_intents/{intent}/cancel",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>You can cancel a SetupIntent object when it’s in one of these statuses: <code>requires_payment_method</code>, <code>requires_confirmation</code>, or <code>requires_action</code>. </p><p>After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can’t cancel the SetupIntent for a Checkout Session. <a href="/docs/api/checkout/sessions/expire">Expire the Checkout Session</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupIntent?> postAsync(CancelPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupIntent>(
        requestInfo, SetupIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can cancel a SetupIntent object when it’s in one of these statuses: <code>requires_payment_method</code>, <code>requires_confirmation</code>, or <code>requires_action</code>. </p><p>After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can’t cancel the SetupIntent for a Checkout Session. <a href="/docs/api/checkout/sessions/expire">Expire the Checkout Session</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CancelPostRequestBody body,
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
