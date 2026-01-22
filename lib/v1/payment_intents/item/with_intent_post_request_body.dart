// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_amount_details.dart';
import './with_intent_post_request_body_application_fee_amount.dart';
import './with_intent_post_request_body_capture_method.dart';
import './with_intent_post_request_body_excluded_payment_method_types.dart';
import './with_intent_post_request_body_hooks.dart';
import './with_intent_post_request_body_payment_details.dart';
import './with_intent_post_request_body_payment_method_data.dart';
import './with_intent_post_request_body_payment_method_options.dart';
import './with_intent_post_request_body_receipt_email.dart';
import './with_intent_post_request_body_setup_future_usage.dart';
import './with_intent_post_request_body_shipping.dart';
import './with_intent_post_request_body_transfer_data.dart';

/// auto generated
class WithIntentPostRequestBody implements Parsable {
  ///  Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
  int? amount;

  ///  Provides industry-specific information about the amount.
  WithIntentPostRequestBodyAmountDetails? amountDetails;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  WithIntentPostRequestBodyApplicationFeeAmount? applicationFeeAmount;

  ///  Controls when the funds will be captured from the customer's account.
  WithIntentPostRequestBodyCaptureMethod? captureMethod;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the Customer this PaymentIntent belongs to, if one exists.Payment methods attached to other Customers cannot be used with this PaymentIntent.If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
  String? customer;

  ///  ID of the Account representing the customer that this PaymentIntent belongs to, if one exists.Payment methods attached to other Accounts cannot be used with this PaymentIntent.If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Account after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Account instead.
  String? customerAccount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The list of payment method types to exclude from use with this payment.
  WithIntentPostRequestBodyExcludedPaymentMethodTypes?
      excludedPaymentMethodTypes;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Automations to be run during the PaymentIntent lifecycle
  WithIntentPostRequestBodyHooks? hooks;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Provides industry-specific information about the charge.
  WithIntentPostRequestBodyPaymentDetails? paymentDetails;

  ///  ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://docs.stripe.com/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent. To unset this field to null, pass in an empty string.
  String? paymentMethod;

  ///  The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this PaymentIntent.
  String? paymentMethodConfiguration;

  ///  If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appearin the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)property on the PaymentIntent.
  WithIntentPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment-method-specific configuration for this PaymentIntent.
  WithIntentPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (for example, card) that this PaymentIntent can use. Use `automatic_payment_methods` to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  Iterable<String>? paymentMethodTypes;

  ///  Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
  WithIntentPostRequestBodyReceiptEmail? receiptEmail;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
  WithIntentPostRequestBodySetupFutureUsage? setupFutureUsage;

  ///  Shipping information for this PaymentIntent.
  WithIntentPostRequestBodyShipping? shipping;

  ///  Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
  String? statementDescriptor;

  ///  Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
  String? statementDescriptorSuffix;

  ///  Use this parameter to automatically create a Transfer when the payment succeeds. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  WithIntentPostRequestBodyTransferData? transferData;

  ///  A string that identifies the resulting payment as part of a group. You can only provide `transfer_group` if it hasn't been set. Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
  String? transferGroup;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithIntentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<WithIntentPostRequestBodyAmountDetails>(
            WithIntentPostRequestBodyAmountDetails
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] = (node) => applicationFeeAmount =
        node.getObjectValue<WithIntentPostRequestBodyApplicationFeeAmount>(
            WithIntentPostRequestBodyApplicationFeeAmount
                .createFromDiscriminatorValue);
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<WithIntentPostRequestBodyCaptureMethod>(
            (stringValue) => WithIntentPostRequestBodyCaptureMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes = node.getObjectValue<
                WithIntentPostRequestBodyExcludedPaymentMethodTypes>(
            WithIntentPostRequestBodyExcludedPaymentMethodTypes
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['hooks'] = (node) => hooks =
        node.getObjectValue<WithIntentPostRequestBodyHooks>(
            WithIntentPostRequestBodyHooks.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['payment_details'] = (node) => paymentDetails =
        node.getObjectValue<WithIntentPostRequestBodyPaymentDetails>(
            WithIntentPostRequestBodyPaymentDetails
                .createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_configuration'] =
        (node) => paymentMethodConfiguration = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodData>(
            WithIntentPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptions>(
            WithIntentPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) =>
        paymentMethodTypes = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['receipt_email'] = (node) => receiptEmail =
        node.getObjectValue<WithIntentPostRequestBodyReceiptEmail>(
            WithIntentPostRequestBodyReceiptEmail.createFromDiscriminatorValue);
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<WithIntentPostRequestBodySetupFutureUsage>(
            (stringValue) => WithIntentPostRequestBodySetupFutureUsage.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<WithIntentPostRequestBodyShipping>(
            WithIntentPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<WithIntentPostRequestBodyTransferData>(
            WithIntentPostRequestBodyTransferData.createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<WithIntentPostRequestBodyAmountDetails>(
        'amount_details', amountDetails);
    writer.writeObjectValue<WithIntentPostRequestBodyApplicationFeeAmount>(
        'application_fee_amount', applicationFeeAmount);
    writer.writeEnumValue<WithIntentPostRequestBodyCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer
        .writeObjectValue<WithIntentPostRequestBodyExcludedPaymentMethodTypes>(
            'excluded_payment_method_types', excludedPaymentMethodTypes);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithIntentPostRequestBodyHooks>('hooks', hooks);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentDetails>(
        'payment_details', paymentDetails);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
    writer.writeObjectValue<WithIntentPostRequestBodyReceiptEmail>(
        'receipt_email', receiptEmail);
    writer.writeEnumValue<WithIntentPostRequestBodySetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<WithIntentPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeObjectValue<WithIntentPostRequestBodyTransferData>(
        'transfer_data', transferData);
    writer.writeStringValue('transfer_group', transferGroup);
  }
}
