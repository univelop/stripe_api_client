// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_errors_source.dart';
import './api_errors_type.dart';
import './payment_intent.dart';
import './payment_method.dart';
import './setup_intent.dart';

/// auto generated
class ApiErrors implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines) if they provide one.
  String? adviceCode;

  ///  For card errors, the ID of the failed charge.
  String? charge;

  ///  For some errors that could be handled programmatically, a short string indicating the [error code](https://docs.stripe.com/error-codes) reported.
  String? code;

  ///  For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://docs.stripe.com/declines#issuer-declines) if they provide one.
  String? declineCode;

  ///  A URL to more information about the [error code](https://docs.stripe.com/error-codes) reported.
  String? docUrl;

  ///  A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
  String? message;

  ///  For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
  String? networkAdviceCode;

  ///  For payments declined by the network, an alphanumeric code which indicates the reason the payment failed.
  String? networkDeclineCode;

  ///  If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
  String? param;

  ///  A PaymentIntent guides you through the process of collecting a payment from your customer.We recommend that you create exactly one PaymentIntent for each order orcustomer session in your system. You can reference the PaymentIntent later tosee the history of payment attempts for a particular session.A PaymentIntent transitions through[multiple statuses](/payments/paymentintents/lifecycle)throughout its lifetime as it interfaces with Stripe.js to performauthentication flows and ultimately creates at most one successful charge.Related guide: [Payment Intents API](https://docs.stripe.com/payments/payment-intents)
  PaymentIntent? paymentIntent;

  ///  PaymentMethod objects represent your customer's payment instruments.You can use them with [PaymentIntents](https://docs.stripe.com/payments/payment-intents) to collect payments or save them toCustomer objects to store instrument details for future payments.Related guides: [Payment Methods](https://docs.stripe.com/payments/payment-methods) and [More Payment Scenarios](https://docs.stripe.com/payments/more-payment-scenarios).
  PaymentMethod? paymentMethod;

  ///  If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
  String? paymentMethodType;

  ///  A URL to the request log entry in your dashboard.
  String? requestLogUrl;

  ///  A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.Later, you can use [PaymentIntents](https://api.stripe.com#payment_intents) to drive the payment flow.Create a SetupIntent when you're ready to collect your customer's payment credentials.Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guidesyou through the setup process.Successful SetupIntents result in payment credentials that are optimized for future payments.For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through[Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collectionto streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents).If you use the SetupIntent with a [Customer](https://api.stripe.com#setup_intent_object-customer),it automatically attaches the resulting payment method to that Customer after successful setup.We recommend using SetupIntents or [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) onPaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
  SetupIntent? setupIntent;

  ///  The [source object](https://docs.stripe.com/api/sources/object) for errors returned on a request involving a source.
  ApiErrorsSource? source;

  ///  The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
  ApiErrorsType? type_;

  /// Instantiates a new [ApiErrors] and sets the default values.
  ApiErrors() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ApiErrors createFromDiscriminatorValue(ParseNode parseNode) {
    return ApiErrors();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['advice_code'] =
        (node) => adviceCode = node.getStringValue();
    deserializerMap['charge'] = (node) => charge = node.getStringValue();
    deserializerMap['code'] = (node) => code = node.getStringValue();
    deserializerMap['decline_code'] =
        (node) => declineCode = node.getStringValue();
    deserializerMap['doc_url'] = (node) => docUrl = node.getStringValue();
    deserializerMap['message'] = (node) => message = node.getStringValue();
    deserializerMap['network_advice_code'] =
        (node) => networkAdviceCode = node.getStringValue();
    deserializerMap['network_decline_code'] =
        (node) => networkDeclineCode = node.getStringValue();
    deserializerMap['param'] = (node) => param = node.getStringValue();
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<PaymentIntent>(
            PaymentIntent.createFromDiscriminatorValue);
    deserializerMap['payment_method'] = (node) => paymentMethod =
        node.getObjectValue<PaymentMethod>(
            PaymentMethod.createFromDiscriminatorValue);
    deserializerMap['payment_method_type'] =
        (node) => paymentMethodType = node.getStringValue();
    deserializerMap['request_log_url'] =
        (node) => requestLogUrl = node.getStringValue();
    deserializerMap['setup_intent'] = (node) => setupIntent = node
        .getObjectValue<SetupIntent>(SetupIntent.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source =
        node.getObjectValue<ApiErrorsSource>(
            ApiErrorsSource.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ApiErrorsType>((stringValue) => ApiErrorsType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('advice_code', adviceCode);
    writer.writeStringValue('charge', charge);
    writer.writeStringValue('code', code);
    writer.writeStringValue('decline_code', declineCode);
    writer.writeStringValue('doc_url', docUrl);
    writer.writeStringValue('message', message);
    writer.writeStringValue('network_advice_code', networkAdviceCode);
    writer.writeStringValue('network_decline_code', networkDeclineCode);
    writer.writeStringValue('param', param);
    writer.writeObjectValue<PaymentIntent>('payment_intent', paymentIntent);
    writer.writeObjectValue<PaymentMethod>('payment_method', paymentMethod);
    writer.writeStringValue('payment_method_type', paymentMethodType);
    writer.writeStringValue('request_log_url', requestLogUrl);
    writer.writeObjectValue<SetupIntent>('setup_intent', setupIntent);
    writer.writeObjectValue<ApiErrorsSource>('source', source);
    writer.writeEnumValue<ApiErrorsType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
