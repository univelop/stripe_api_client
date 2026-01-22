// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_intent.dart';
import './confirm_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents\{intent}\confirm
class ConfirmRequestBuilder extends BaseRequestBuilder<ConfirmRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ConfirmRequestBuilder clone() {
    return ConfirmRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ConfirmRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_intents/{intent}/confirm",
            pathParameters);

  /// Instantiates a new [ConfirmRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_intents/{intent}/confirm",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Confirm that your customer intends to pay with current or providedpayment method. Upon confirmation, the PaymentIntent will attempt to initiatea payment.</p><p>If the selected payment method requires additional authentication steps, thePaymentIntent will transition to the <code>requires_action</code> status andsuggest additional actions via <code>next_action</code>. If payment fails,the PaymentIntent transitions to the <code>requires_payment_method</code> status or the<code>canceled</code> status if the confirmation limit is reached. Ifpayment succeeds, the PaymentIntent will transition to the <code>succeeded</code>status (or <code>requires_capture</code>, if <code>capture_method</code> is set to <code>manual</code>).</p><p>If the <code>confirmation_method</code> is <code>automatic</code>, payment may be attemptedusing our <a href="/docs/stripe-js/reference#stripe-handle-card-payment">client SDKs</a>and the PaymentIntent’s <a href="#payment_intent_object-client_secret">client_secret</a>.After <code>next_action</code>s are handled by the client, no additionalconfirmation is required to complete the payment.</p><p>If the <code>confirmation_method</code> is <code>manual</code>, all payment attempts must beinitiated using a secret key.</p><p>If any actions are required for the payment, the PaymentIntent willreturn to the <code>requires_confirmation</code> stateafter those actions are completed. Your server needs to thenexplicitly re-confirm the PaymentIntent to initiate the next paymentattempt.</p><p>There is a variable upper limit on how many times a PaymentIntent can be confirmed.After this limit is reached, any further calls to this endpoint willtransition the PaymentIntent to the <code>canceled</code> state.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> postAsync(ConfirmPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Confirm that your customer intends to pay with current or providedpayment method. Upon confirmation, the PaymentIntent will attempt to initiatea payment.</p><p>If the selected payment method requires additional authentication steps, thePaymentIntent will transition to the <code>requires_action</code> status andsuggest additional actions via <code>next_action</code>. If payment fails,the PaymentIntent transitions to the <code>requires_payment_method</code> status or the<code>canceled</code> status if the confirmation limit is reached. Ifpayment succeeds, the PaymentIntent will transition to the <code>succeeded</code>status (or <code>requires_capture</code>, if <code>capture_method</code> is set to <code>manual</code>).</p><p>If the <code>confirmation_method</code> is <code>automatic</code>, payment may be attemptedusing our <a href="/docs/stripe-js/reference#stripe-handle-card-payment">client SDKs</a>and the PaymentIntent’s <a href="#payment_intent_object-client_secret">client_secret</a>.After <code>next_action</code>s are handled by the client, no additionalconfirmation is required to complete the payment.</p><p>If the <code>confirmation_method</code> is <code>manual</code>, all payment attempts must beinitiated using a secret key.</p><p>If any actions are required for the payment, the PaymentIntent willreturn to the <code>requires_confirmation</code> stateafter those actions are completed. Your server needs to thenexplicitly re-confirm the PaymentIntent to initiate the next paymentattempt.</p><p>There is a variable upper limit on how many times a PaymentIntent can be confirmed.After this limit is reached, any further calls to this endpoint willtransition the PaymentIntent to the <code>canceled</code> state.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ConfirmPostRequestBody body,
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
