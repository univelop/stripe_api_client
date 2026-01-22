// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_intent.dart';
import './increment_authorization_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents\{intent}\increment_authorization
class IncrementAuthorizationRequestBuilder
    extends BaseRequestBuilder<IncrementAuthorizationRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  IncrementAuthorizationRequestBuilder clone() {
    return IncrementAuthorizationRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [IncrementAuthorizationRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IncrementAuthorizationRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}/increment_authorization",
            pathParameters);

  /// Instantiates a new [IncrementAuthorizationRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IncrementAuthorizationRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}/increment_authorization",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Perform an incremental authorization on an eligible<a href="/docs/api/payment_intents/object">PaymentIntent</a>. To be eligible, thePaymentIntent’s status must be <code>requires_capture</code> and<a href="/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported">incremental_authorization_supported</a>must be <code>true</code>.</p><p>Incremental authorizations attempt to increase the authorized amount onyour customer’s card to the new, higher <code>amount</code> provided. Similar to theinitial authorization, incremental authorizations can be declined. Asingle PaymentIntent can call this endpoint multiple times to furtherincrease the authorized amount.</p><p>If the incremental authorization succeeds, the PaymentIntent objectreturns with the updated<a href="/docs/api/payment_intents/object#payment_intent_object-amount">amount</a>.If the incremental authorization fails, a<a href="/docs/error-codes#card-declined">card_declined</a> error returns, and no otherfields on the PaymentIntent or Charge update. The PaymentIntentobject remains capturable for the previously authorized amount.</p><p>Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.After it’s captured, a PaymentIntent can no longer be incremented.</p><p>Learn more about <a href="/docs/terminal/features/incremental-authorizations">incremental authorizations</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> postAsync(IncrementAuthorizationPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Perform an incremental authorization on an eligible<a href="/docs/api/payment_intents/object">PaymentIntent</a>. To be eligible, thePaymentIntent’s status must be <code>requires_capture</code> and<a href="/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported">incremental_authorization_supported</a>must be <code>true</code>.</p><p>Incremental authorizations attempt to increase the authorized amount onyour customer’s card to the new, higher <code>amount</code> provided. Similar to theinitial authorization, incremental authorizations can be declined. Asingle PaymentIntent can call this endpoint multiple times to furtherincrease the authorized amount.</p><p>If the incremental authorization succeeds, the PaymentIntent objectreturns with the updated<a href="/docs/api/payment_intents/object#payment_intent_object-amount">amount</a>.If the incremental authorization fails, a<a href="/docs/error-codes#card-declined">card_declined</a> error returns, and no otherfields on the PaymentIntent or Charge update. The PaymentIntentobject remains capturable for the previously authorized amount.</p><p>Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.After it’s captured, a PaymentIntent can no longer be incremented.</p><p>Learn more about <a href="/docs/terminal/features/incremental-authorizations">incremental authorizations</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      IncrementAuthorizationPostRequestBody body,
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
