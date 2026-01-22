// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_intent.dart';
import './amount_details_line_items/amount_details_line_items_request_builder.dart';
import './apply_customer_balance/apply_customer_balance_request_builder.dart';
import './cancel/cancel_request_builder.dart';
import './capture/capture_request_builder.dart';
import './confirm/confirm_request_builder.dart';
import './increment_authorization/increment_authorization_request_builder.dart';
import './verify_microdeposits/verify_microdeposits_request_builder.dart';
import './with_intent_get_request_body.dart';
import './with_intent_item_request_builder_get_query_parameters.dart';
import './with_intent_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents\{intent}
class WithIntentItemRequestBuilder
    extends BaseRequestBuilder<WithIntentItemRequestBuilder> {
  ///  The amount_details_line_items property
  AmountDetailsLineItemsRequestBuilder get amountDetailsLineItems {
    return AmountDetailsLineItemsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The apply_customer_balance property
  ApplyCustomerBalanceRequestBuilder get applyCustomerBalance {
    return ApplyCustomerBalanceRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The cancel property
  CancelRequestBuilder get cancel {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The capture property
  CaptureRequestBuilder get capture {
    return CaptureRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The confirm property
  ConfirmRequestBuilder get confirm {
    return ConfirmRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The increment_authorization property
  IncrementAuthorizationRequestBuilder get incrementAuthorization {
    return IncrementAuthorizationRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The verify_microdeposits property
  VerifyMicrodepositsRequestBuilder get verifyMicrodeposits {
    return VerifyMicrodepositsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithIntentItemRequestBuilder clone() {
    return WithIntentItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithIntentItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithIntentItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}{?client_secret*,expand*}",
            pathParameters);

  /// Instantiates a new [WithIntentItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithIntentItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}{?client_secret*,expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a PaymentIntent that has previously been created. </p><p>You can retrieve a PaymentIntent client-side using a publishable key when the <code>client_secret</code> is in the query string. </p><p>If you retrieve a PaymentIntent with a publishable key, it only returns a subset of properties. Refer to the <a href="#payment_intent_object">payment intent</a> object reference for more details.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> getAsync(WithIntentGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithIntentItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates properties on a PaymentIntent object without confirming.</p><p>Depending on which properties you update, you might need to confirm thePaymentIntent again. For example, updating the <code>payment_method</code>always requires you to confirm the PaymentIntent again. If you prefer toupdate and confirm at the same time, we recommend updating properties throughthe <a href="/docs/api/payment_intents/confirm">confirm API</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> postAsync(WithIntentPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a PaymentIntent that has previously been created. </p><p>You can retrieve a PaymentIntent client-side using a publishable key when the <code>client_secret</code> is in the query string. </p><p>If you retrieve a PaymentIntent with a publishable key, it only returns a subset of properties. Refer to the <a href="#payment_intent_object">payment intent</a> object reference for more details.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithIntentGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithIntentItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithIntentItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithIntentItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates properties on a PaymentIntent object without confirming.</p><p>Depending on which properties you update, you might need to confirm thePaymentIntent again. For example, updating the <code>payment_method</code>always requires you to confirm the PaymentIntent again. If you prefer toupdate and confirm at the same time, we recommend updating properties throughthe <a href="/docs/api/payment_intents/confirm">confirm API</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithIntentPostRequestBody body,
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
