// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_amount_details.dart';
import './confirm_post_request_body_capture_method.dart';
import './confirm_post_request_body_excluded_payment_method_types.dart';
import './confirm_post_request_body_hooks.dart';
import './confirm_post_request_body_mandate_data.dart';
import './confirm_post_request_body_off_session.dart';
import './confirm_post_request_body_payment_details.dart';
import './confirm_post_request_body_payment_method_data.dart';
import './confirm_post_request_body_payment_method_options.dart';
import './confirm_post_request_body_radar_options.dart';
import './confirm_post_request_body_receipt_email.dart';
import './confirm_post_request_body_setup_future_usage.dart';
import './confirm_post_request_body_shipping.dart';

/// auto generated
class ConfirmPostRequestBody implements Parsable {
  ///  Provides industry-specific information about the amount.
  ConfirmPostRequestBodyAmountDetails? amountDetails;

  ///  Controls when the funds will be captured from the customer's account.
  ConfirmPostRequestBodyCaptureMethod? captureMethod;

  ///  The client secret of the PaymentIntent.
  String? clientSecret;

  ///  ID of the ConfirmationToken used to confirm this PaymentIntent.If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
  String? confirmationToken;

  ///  Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://docs.stripe.com/payments/save-card-without-authentication).
  bool? errorOnRequiresAction;

  ///  The list of payment method types to exclude from use with this payment.
  ConfirmPostRequestBodyExcludedPaymentMethodTypes? excludedPaymentMethodTypes;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Automations to be run during the PaymentIntent lifecycle
  ConfirmPostRequestBodyHooks? hooks;

  ///  ID of the mandate that's used for this payment.
  String? mandate;

  ///  The mandate_data property
  ConfirmPostRequestBodyMandateData? mandateData;

  ///  Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://docs.stripe.com/payments/cards/charging-saved-cards).
  ConfirmPostRequestBodyOffSession? offSession;

  ///  Provides industry-specific information about the charge.
  ConfirmPostRequestBodyPaymentDetails? paymentDetails;

  ///  ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://docs.stripe.com/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.If the payment method is attached to a Customer, it must match the [customer](https://api.stripe.com#create_payment_intent-customer) that is set on this PaymentIntent.
  String? paymentMethod;

  ///  If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appearin the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)property on the PaymentIntent.
  ConfirmPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment method-specific configuration for this PaymentIntent.
  ConfirmPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (for example, a card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  Iterable<String>? paymentMethodTypes;

  ///  Options to configure Radar. Learn more about [Radar Sessions](https://docs.stripe.com/radar/radar-session).
  ConfirmPostRequestBodyRadarOptions? radarOptions;

  ///  Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  ConfirmPostRequestBodyReceiptEmail? receiptEmail;

  ///  The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.This parameter is only used for cards and other redirect-based payment methods.
  String? returnUrl;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
  ConfirmPostRequestBodySetupFutureUsage? setupFutureUsage;

  ///  Shipping information for this PaymentIntent.
  ConfirmPostRequestBodyShipping? shipping;

  ///  Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
  bool? useStripeSdk;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<ConfirmPostRequestBodyAmountDetails>(
            ConfirmPostRequestBodyAmountDetails.createFromDiscriminatorValue);
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<ConfirmPostRequestBodyCaptureMethod>((stringValue) =>
            ConfirmPostRequestBodyCaptureMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['confirmation_token'] =
        (node) => confirmationToken = node.getStringValue();
    deserializerMap['error_on_requires_action'] =
        (node) => errorOnRequiresAction = node.getBoolValue();
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes = node
            .getObjectValue<ConfirmPostRequestBodyExcludedPaymentMethodTypes>(
                ConfirmPostRequestBodyExcludedPaymentMethodTypes
                    .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['hooks'] = (node) => hooks =
        node.getObjectValue<ConfirmPostRequestBodyHooks>(
            ConfirmPostRequestBodyHooks.createFromDiscriminatorValue);
    deserializerMap['mandate'] = (node) => mandate = node.getStringValue();
    deserializerMap['mandate_data'] = (node) => mandateData =
        node.getObjectValue<ConfirmPostRequestBodyMandateData>(
            ConfirmPostRequestBodyMandateData.createFromDiscriminatorValue);
    deserializerMap['off_session'] = (node) => offSession =
        node.getObjectValue<ConfirmPostRequestBodyOffSession>(
            ConfirmPostRequestBodyOffSession.createFromDiscriminatorValue);
    deserializerMap['payment_details'] = (node) => paymentDetails =
        node.getObjectValue<ConfirmPostRequestBodyPaymentDetails>(
            ConfirmPostRequestBodyPaymentDetails.createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodData>(
            ConfirmPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptions>(
            ConfirmPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) =>
        paymentMethodTypes = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<ConfirmPostRequestBodyRadarOptions>(
            ConfirmPostRequestBodyRadarOptions.createFromDiscriminatorValue);
    deserializerMap['receipt_email'] = (node) => receiptEmail =
        node.getObjectValue<ConfirmPostRequestBodyReceiptEmail>(
            ConfirmPostRequestBodyReceiptEmail.createFromDiscriminatorValue);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<ConfirmPostRequestBodySetupFutureUsage>(
            (stringValue) => ConfirmPostRequestBodySetupFutureUsage.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<ConfirmPostRequestBodyShipping>(
            ConfirmPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['use_stripe_sdk'] =
        (node) => useStripeSdk = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfirmPostRequestBodyAmountDetails>(
        'amount_details', amountDetails);
    writer.writeEnumValue<ConfirmPostRequestBodyCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeStringValue('confirmation_token', confirmationToken);
    writer.writeBoolValue('error_on_requires_action',
        value: errorOnRequiresAction);
    writer.writeObjectValue<ConfirmPostRequestBodyExcludedPaymentMethodTypes>(
        'excluded_payment_method_types', excludedPaymentMethodTypes);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ConfirmPostRequestBodyHooks>('hooks', hooks);
    writer.writeStringValue('mandate', mandate);
    writer.writeObjectValue<ConfirmPostRequestBodyMandateData>(
        'mandate_data', mandateData);
    writer.writeObjectValue<ConfirmPostRequestBodyOffSession>(
        'off_session', offSession);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentDetails>(
        'payment_details', paymentDetails);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
    writer.writeObjectValue<ConfirmPostRequestBodyRadarOptions>(
        'radar_options', radarOptions);
    writer.writeObjectValue<ConfirmPostRequestBodyReceiptEmail>(
        'receipt_email', receiptEmail);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeEnumValue<ConfirmPostRequestBodySetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<ConfirmPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeBoolValue('use_stripe_sdk', value: useStripeSdk);
  }
}
