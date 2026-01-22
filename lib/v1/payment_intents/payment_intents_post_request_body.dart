// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_amount_details.dart';
import './payment_intents_post_request_body_automatic_payment_methods.dart';
import './payment_intents_post_request_body_capture_method.dart';
import './payment_intents_post_request_body_confirmation_method.dart';
import './payment_intents_post_request_body_excluded_payment_method_types.dart';
import './payment_intents_post_request_body_hooks.dart';
import './payment_intents_post_request_body_mandate_data.dart';
import './payment_intents_post_request_body_metadata.dart';
import './payment_intents_post_request_body_off_session.dart';
import './payment_intents_post_request_body_payment_details.dart';
import './payment_intents_post_request_body_payment_method_data.dart';
import './payment_intents_post_request_body_payment_method_options.dart';
import './payment_intents_post_request_body_radar_options.dart';
import './payment_intents_post_request_body_setup_future_usage.dart';
import './payment_intents_post_request_body_shipping.dart';
import './payment_intents_post_request_body_transfer_data.dart';

/// auto generated
class PaymentIntentsPostRequestBody implements Parsable {
  ///  Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  int? amount;

  ///  Provides industry-specific information about the amount.
  PaymentIntentsPostRequestBodyAmountDetails? amountDetails;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  int? applicationFeeAmount;

  ///  When you enable this parameter, this PaymentIntent accepts payment methods that you enable in the Dashboard and that are compatible with this PaymentIntent's other parameters.
  PaymentIntentsPostRequestBodyAutomaticPaymentMethods? automaticPaymentMethods;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentIntentsPostRequestBodyCaptureMethod? captureMethod;

  ///  Set to `true` to attempt to [confirm this PaymentIntent](https://docs.stripe.com/api/payment_intents/confirm) immediately. This parameter defaults to `false`. When creating and confirming a PaymentIntent at the same time, you can also provide the parameters available in the [Confirm API](https://docs.stripe.com/api/payment_intents/confirm).
  bool? confirm;

  ///  Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
  PaymentIntentsPostRequestBodyConfirmationMethod? confirmationMethod;

  ///  ID of the ConfirmationToken used to confirm this PaymentIntent.If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
  String? confirmationToken;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the Customer this PaymentIntent belongs to, if one exists.Payment methods attached to other Customers cannot be used with this PaymentIntent.If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
  String? customer;

  ///  ID of the Account representing the customer that this PaymentIntent belongs to, if one exists.Payment methods attached to other Accounts cannot be used with this PaymentIntent.If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Account after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Account instead.
  String? customerAccount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. Use this parameter for simpler integrations that don't handle customer actions, such as [saving cards without authentication](https://docs.stripe.com/payments/save-card-without-authentication). This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
  bool? errorOnRequiresAction;

  ///  The list of payment method types to exclude from use with this payment.
  Iterable<PaymentIntentsPostRequestBodyExcludedPaymentMethodTypes>?
      excludedPaymentMethodTypes;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Automations to be run during the PaymentIntent lifecycle
  PaymentIntentsPostRequestBodyHooks? hooks;

  ///  ID of the mandate that's used for this payment. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
  String? mandate;

  ///  This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
  PaymentIntentsPostRequestBodyMandateData? mandateData;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  PaymentIntentsPostRequestBodyMetadata? metadata;

  ///  Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://docs.stripe.com/payments/cards/charging-saved-cards). This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
  PaymentIntentsPostRequestBodyOffSession? offSession;

  ///  The Stripe account ID that these funds are intended for. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  String? onBehalfOf;

  ///  Provides industry-specific information about the charge.
  PaymentIntentsPostRequestBodyPaymentDetails? paymentDetails;

  ///  ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://docs.stripe.com/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.If you omit this parameter with `confirm=true`, `customer.default_source` attaches as this PaymentIntent's payment instrument to improve migration for users of the Charges API. We recommend that you explicitly provide the `payment_method` moving forward.If the payment method is attached to a Customer, you must also provide the ID of that Customer as the [customer](https://api.stripe.com#create_payment_intent-customer) parameter of this PaymentIntent.
  String? paymentMethod;

  ///  The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this PaymentIntent.
  String? paymentMethodConfiguration;

  ///  If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appearin the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)property on the PaymentIntent.
  PaymentIntentsPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment method-specific configuration for this PaymentIntent.
  PaymentIntentsPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (for example, a card) that this PaymentIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  Iterable<String>? paymentMethodTypes;

  ///  Options to configure Radar. Learn more about [Radar Sessions](https://docs.stripe.com/radar/radar-session).
  PaymentIntentsPostRequestBodyRadarOptions? radarOptions;

  ///  Email address to send the receipt to. If you specify `receipt_email` for a payment in live mode, you send a receipt regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  String? receiptEmail;

  ///  The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
  String? returnUrl;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  PaymentIntentsPostRequestBodySetupFutureUsage? setupFutureUsage;

  ///  Shipping information for this PaymentIntent.
  PaymentIntentsPostRequestBodyShipping? shipping;

  ///  Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
  String? statementDescriptor;

  ///  Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
  String? statementDescriptorSuffix;

  ///  The parameters that you can use to automatically create a Transfer.Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  PaymentIntentsPostRequestBodyTransferData? transferData;

  ///  A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://docs.stripe.com/connect/separate-charges-and-transfers).
  String? transferGroup;

  ///  Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
  bool? useStripeSdk;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<PaymentIntentsPostRequestBodyAmountDetails>(
            PaymentIntentsPostRequestBodyAmountDetails
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['automatic_payment_methods'] = (node) =>
        automaticPaymentMethods = node.getObjectValue<
                PaymentIntentsPostRequestBodyAutomaticPaymentMethods>(
            PaymentIntentsPostRequestBodyAutomaticPaymentMethods
                .createFromDiscriminatorValue);
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<PaymentIntentsPostRequestBodyCaptureMethod>(
            (stringValue) => PaymentIntentsPostRequestBodyCaptureMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['confirm'] = (node) => confirm = node.getBoolValue();
    deserializerMap['confirmation_method'] = (node) => confirmationMethod =
        node.getEnumValue<PaymentIntentsPostRequestBodyConfirmationMethod>(
            (stringValue) => PaymentIntentsPostRequestBodyConfirmationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['confirmation_token'] =
        (node) => confirmationToken = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['error_on_requires_action'] =
        (node) => errorOnRequiresAction = node.getBoolValue();
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes = node.getCollectionOfEnumValues<
                PaymentIntentsPostRequestBodyExcludedPaymentMethodTypes>(
            (stringValue) =>
                PaymentIntentsPostRequestBodyExcludedPaymentMethodTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['hooks'] = (node) => hooks =
        node.getObjectValue<PaymentIntentsPostRequestBodyHooks>(
            PaymentIntentsPostRequestBodyHooks.createFromDiscriminatorValue);
    deserializerMap['mandate'] = (node) => mandate = node.getStringValue();
    deserializerMap['mandate_data'] = (node) => mandateData =
        node.getObjectValue<PaymentIntentsPostRequestBodyMandateData>(
            PaymentIntentsPostRequestBodyMandateData
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentIntentsPostRequestBodyMetadata>(
            PaymentIntentsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['off_session'] = (node) => offSession = node.getObjectValue<
            PaymentIntentsPostRequestBodyOffSession>(
        PaymentIntentsPostRequestBodyOffSession.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['payment_details'] = (node) => paymentDetails =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentDetails>(
            PaymentIntentsPostRequestBodyPaymentDetails
                .createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_configuration'] =
        (node) => paymentMethodConfiguration = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodData>(
            PaymentIntentsPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptions>(
            PaymentIntentsPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) =>
        paymentMethodTypes = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<PaymentIntentsPostRequestBodyRadarOptions>(
            PaymentIntentsPostRequestBodyRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['receipt_email'] =
        (node) => receiptEmail = node.getStringValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<PaymentIntentsPostRequestBodySetupFutureUsage>(
            (stringValue) => PaymentIntentsPostRequestBodySetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<PaymentIntentsPostRequestBodyShipping>(
            PaymentIntentsPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<PaymentIntentsPostRequestBodyTransferData>(
            PaymentIntentsPostRequestBodyTransferData
                .createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    deserializerMap['use_stripe_sdk'] =
        (node) => useStripeSdk = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyAmountDetails>(
        'amount_details', amountDetails);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyAutomaticPaymentMethods>(
            'automatic_payment_methods', automaticPaymentMethods);
    writer.writeEnumValue<PaymentIntentsPostRequestBodyCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeBoolValue('confirm', value: confirm);
    writer.writeEnumValue<PaymentIntentsPostRequestBodyConfirmationMethod>(
        'confirmation_method', confirmationMethod, (e) => e?.value);
    writer.writeStringValue('confirmation_token', confirmationToken);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('error_on_requires_action',
        value: errorOnRequiresAction);
    writer.writeCollectionOfEnumValues<
            PaymentIntentsPostRequestBodyExcludedPaymentMethodTypes>(
        'excluded_payment_method_types',
        excludedPaymentMethodTypes,
        (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyHooks>('hooks', hooks);
    writer.writeStringValue('mandate', mandate);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyMandateData>(
        'mandate_data', mandateData);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyOffSession>(
        'off_session', offSession);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentDetails>(
        'payment_details', paymentDetails);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyRadarOptions>(
        'radar_options', radarOptions);
    writer.writeStringValue('receipt_email', receiptEmail);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeEnumValue<PaymentIntentsPostRequestBodySetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyTransferData>(
        'transfer_data', transferData);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeBoolValue('use_stripe_sdk', value: useStripeSdk);
  }
}
