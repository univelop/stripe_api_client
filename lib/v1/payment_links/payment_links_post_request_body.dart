// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_after_completion.dart';
import './payment_links_post_request_body_automatic_tax.dart';
import './payment_links_post_request_body_billing_address_collection.dart';
import './payment_links_post_request_body_consent_collection.dart';
import './payment_links_post_request_body_custom_fields.dart';
import './payment_links_post_request_body_custom_text.dart';
import './payment_links_post_request_body_customer_creation.dart';
import './payment_links_post_request_body_invoice_creation.dart';
import './payment_links_post_request_body_line_items.dart';
import './payment_links_post_request_body_metadata.dart';
import './payment_links_post_request_body_name_collection.dart';
import './payment_links_post_request_body_optional_items.dart';
import './payment_links_post_request_body_payment_intent_data.dart';
import './payment_links_post_request_body_payment_method_collection.dart';
import './payment_links_post_request_body_payment_method_types.dart';
import './payment_links_post_request_body_phone_number_collection.dart';
import './payment_links_post_request_body_restrictions.dart';
import './payment_links_post_request_body_shipping_address_collection.dart';
import './payment_links_post_request_body_shipping_options.dart';
import './payment_links_post_request_body_submit_type.dart';
import './payment_links_post_request_body_subscription_data.dart';
import './payment_links_post_request_body_tax_id_collection.dart';
import './payment_links_post_request_body_transfer_data.dart';

/// auto generated
class PaymentLinksPostRequestBody implements Parsable {
  ///  Behavior after the purchase is complete.
  PaymentLinksPostRequestBodyAfterCompletion? afterCompletion;

  ///  Enables user redeemable promotion codes.
  bool? allowPromotionCodes;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Can only be applied when there are no line items with recurring prices.
  int? applicationFeeAmount;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
  double? applicationFeePercent;

  ///  Configuration for automatic tax collection.
  PaymentLinksPostRequestBodyAutomaticTax? automaticTax;

  ///  Configuration for collecting the customer's billing address. Defaults to `auto`.
  PaymentLinksPostRequestBodyBillingAddressCollection? billingAddressCollection;

  ///  Configure fields to gather active consent from customers.
  PaymentLinksPostRequestBodyConsentCollection? consentCollection;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies) and supported by each line item's price.
  String? currency;

  ///  Configures whether [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link create a [Customer](https://docs.stripe.com/api/customers).
  PaymentLinksPostRequestBodyCustomerCreation? customerCreation;

  ///  Collect additional information from your customer using custom fields. Up to 3 fields are supported.
  Iterable<PaymentLinksPostRequestBodyCustomFields>? customFields;

  ///  Display additional text for your customers using custom text.
  PaymentLinksPostRequestBodyCustomText? customText;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The custom message to be displayed to a customer when a payment link is no longer active.
  String? inactiveMessage;

  ///  Generate a post-purchase Invoice for one-time payments.
  PaymentLinksPostRequestBodyInvoiceCreation? invoiceCreation;

  ///  The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
  Iterable<PaymentLinksPostRequestBodyLineItems>? lineItems;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link.
  PaymentLinksPostRequestBodyMetadata? metadata;

  ///  Controls settings applied for collecting the customer's name.
  PaymentLinksPostRequestBodyNameCollection? nameCollection;

  ///  The account on behalf of which to charge.
  String? onBehalfOf;

  ///  A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices).There is a maximum of 10 optional items allowed on a payment link, and the existing limits on the number of line items allowed on a payment link apply to the combined number of line items and optional items.There is a maximum of 20 combined line items and optional items.
  Iterable<PaymentLinksPostRequestBodyOptionalItems>? optionalItems;

  ///  A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  PaymentLinksPostRequestBodyPaymentIntentData? paymentIntentData;

  ///  Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.Can only be set in `subscription` mode. Defaults to `always`.If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials).
  PaymentLinksPostRequestBodyPaymentMethodCollection? paymentMethodCollection;

  ///  The list of payment method types that customers can use. If no value is passed, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods) (20+ payment methods [supported](https://docs.stripe.com/payments/payment-methods/integration-options#payment-method-product-support)).
  Iterable<PaymentLinksPostRequestBodyPaymentMethodTypes>? paymentMethodTypes;

  ///  Controls phone number collection settings during checkout.We recommend that you review your privacy policy and check with your legal contacts.
  PaymentLinksPostRequestBodyPhoneNumberCollection? phoneNumberCollection;

  ///  Settings that restrict the usage of a payment link.
  PaymentLinksPostRequestBodyRestrictions? restrictions;

  ///  Configuration for collecting the customer's shipping address.
  PaymentLinksPostRequestBodyShippingAddressCollection?
      shippingAddressCollection;

  ///  The shipping rate options to apply to [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link.
  Iterable<PaymentLinksPostRequestBodyShippingOptions>? shippingOptions;

  ///  Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://docs.stripe.com/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
  PaymentLinksPostRequestBodySubmitType? submitType;

  ///  When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
  PaymentLinksPostRequestBodySubscriptionData? subscriptionData;

  ///  Controls tax ID collection during checkout.
  PaymentLinksPostRequestBodyTaxIdCollection? taxIdCollection;

  ///  The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
  PaymentLinksPostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['after_completion'] = (node) => afterCompletion =
        node.getObjectValue<PaymentLinksPostRequestBodyAfterCompletion>(
            PaymentLinksPostRequestBodyAfterCompletion
                .createFromDiscriminatorValue);
    deserializerMap['allow_promotion_codes'] =
        (node) => allowPromotionCodes = node.getBoolValue();
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<PaymentLinksPostRequestBodyAutomaticTax>(
            PaymentLinksPostRequestBodyAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_address_collection'] = (node) =>
        billingAddressCollection = node
            .getEnumValue<PaymentLinksPostRequestBodyBillingAddressCollection>(
                (stringValue) =>
                    PaymentLinksPostRequestBodyBillingAddressCollection.values
                        .where((enumVal) => enumVal.value == stringValue)
                        .firstOrNull);
    deserializerMap['consent_collection'] = (node) => consentCollection =
        node.getObjectValue<PaymentLinksPostRequestBodyConsentCollection>(
            PaymentLinksPostRequestBodyConsentCollection
                .createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer_creation'] = (node) => customerCreation =
        node.getEnumValue<PaymentLinksPostRequestBodyCustomerCreation>(
            (stringValue) => PaymentLinksPostRequestBodyCustomerCreation.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['custom_fields'] = (node) => customFields = node
        .getCollectionOfObjectValues<PaymentLinksPostRequestBodyCustomFields>(
            PaymentLinksPostRequestBodyCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['custom_text'] = (node) => customText =
        node.getObjectValue<PaymentLinksPostRequestBodyCustomText>(
            PaymentLinksPostRequestBodyCustomText.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['inactive_message'] =
        (node) => inactiveMessage = node.getStringValue();
    deserializerMap['invoice_creation'] = (node) => invoiceCreation =
        node.getObjectValue<PaymentLinksPostRequestBodyInvoiceCreation>(
            PaymentLinksPostRequestBodyInvoiceCreation
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<PaymentLinksPostRequestBodyLineItems>(
            PaymentLinksPostRequestBodyLineItems.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentLinksPostRequestBodyMetadata>(
            PaymentLinksPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['name_collection'] = (node) => nameCollection =
        node.getObjectValue<PaymentLinksPostRequestBodyNameCollection>(
            PaymentLinksPostRequestBodyNameCollection
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['optional_items'] = (node) => optionalItems = node
        .getCollectionOfObjectValues<PaymentLinksPostRequestBodyOptionalItems>(
            PaymentLinksPostRequestBodyOptionalItems
                .createFromDiscriminatorValue);
    deserializerMap['payment_intent_data'] = (node) => paymentIntentData =
        node.getObjectValue<PaymentLinksPostRequestBodyPaymentIntentData>(
            PaymentLinksPostRequestBodyPaymentIntentData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_collection'] = (node) =>
        paymentMethodCollection = node
            .getEnumValue<PaymentLinksPostRequestBodyPaymentMethodCollection>(
                (stringValue) =>
                    PaymentLinksPostRequestBodyPaymentMethodCollection.values
                        .where((enumVal) => enumVal.value == stringValue)
                        .firstOrNull);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getCollectionOfEnumValues<
                PaymentLinksPostRequestBodyPaymentMethodTypes>(
            (stringValue) => PaymentLinksPostRequestBodyPaymentMethodTypes
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['phone_number_collection'] = (node) =>
        phoneNumberCollection = node
            .getObjectValue<PaymentLinksPostRequestBodyPhoneNumberCollection>(
                PaymentLinksPostRequestBodyPhoneNumberCollection
                    .createFromDiscriminatorValue);
    deserializerMap['restrictions'] = (node) => restrictions =
        node.getObjectValue<PaymentLinksPostRequestBodyRestrictions>(
            PaymentLinksPostRequestBodyRestrictions
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address_collection'] = (node) =>
        shippingAddressCollection = node.getObjectValue<
                PaymentLinksPostRequestBodyShippingAddressCollection>(
            PaymentLinksPostRequestBodyShippingAddressCollection
                .createFromDiscriminatorValue);
    deserializerMap['shipping_options'] = (node) => shippingOptions =
        node.getCollectionOfObjectValues<
                PaymentLinksPostRequestBodyShippingOptions>(
            PaymentLinksPostRequestBodyShippingOptions
                .createFromDiscriminatorValue);
    deserializerMap['submit_type'] = (node) => submitType =
        node.getEnumValue<PaymentLinksPostRequestBodySubmitType>(
            (stringValue) => PaymentLinksPostRequestBodySubmitType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<PaymentLinksPostRequestBodySubscriptionData>(
            PaymentLinksPostRequestBodySubscriptionData
                .createFromDiscriminatorValue);
    deserializerMap['tax_id_collection'] = (node) => taxIdCollection =
        node.getObjectValue<PaymentLinksPostRequestBodyTaxIdCollection>(
            PaymentLinksPostRequestBodyTaxIdCollection
                .createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<PaymentLinksPostRequestBodyTransferData>(
            PaymentLinksPostRequestBodyTransferData
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentLinksPostRequestBodyAfterCompletion>(
        'after_completion', afterCompletion);
    writer.writeBoolValue('allow_promotion_codes', value: allowPromotionCodes);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<PaymentLinksPostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<PaymentLinksPostRequestBodyBillingAddressCollection>(
        'billing_address_collection',
        billingAddressCollection,
        (e) => e?.value);
    writer.writeObjectValue<PaymentLinksPostRequestBodyConsentCollection>(
        'consent_collection', consentCollection);
    writer.writeStringValue('currency', currency);
    writer.writeEnumValue<PaymentLinksPostRequestBodyCustomerCreation>(
        'customer_creation', customerCreation, (e) => e?.value);
    writer
        .writeCollectionOfObjectValues<PaymentLinksPostRequestBodyCustomFields>(
            'custom_fields', customFields);
    writer.writeObjectValue<PaymentLinksPostRequestBodyCustomText>(
        'custom_text', customText);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('inactive_message', inactiveMessage);
    writer.writeObjectValue<PaymentLinksPostRequestBodyInvoiceCreation>(
        'invoice_creation', invoiceCreation);
    writer.writeCollectionOfObjectValues<PaymentLinksPostRequestBodyLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<PaymentLinksPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<PaymentLinksPostRequestBodyNameCollection>(
        'name_collection', nameCollection);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeCollectionOfObjectValues<
            PaymentLinksPostRequestBodyOptionalItems>(
        'optional_items', optionalItems);
    writer.writeObjectValue<PaymentLinksPostRequestBodyPaymentIntentData>(
        'payment_intent_data', paymentIntentData);
    writer.writeEnumValue<PaymentLinksPostRequestBodyPaymentMethodCollection>(
        'payment_method_collection', paymentMethodCollection, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            PaymentLinksPostRequestBodyPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes, (e) => e?.value);
    writer.writeObjectValue<PaymentLinksPostRequestBodyPhoneNumberCollection>(
        'phone_number_collection', phoneNumberCollection);
    writer.writeObjectValue<PaymentLinksPostRequestBodyRestrictions>(
        'restrictions', restrictions);
    writer
        .writeObjectValue<PaymentLinksPostRequestBodyShippingAddressCollection>(
            'shipping_address_collection', shippingAddressCollection);
    writer.writeCollectionOfObjectValues<
            PaymentLinksPostRequestBodyShippingOptions>(
        'shipping_options', shippingOptions);
    writer.writeEnumValue<PaymentLinksPostRequestBodySubmitType>(
        'submit_type', submitType, (e) => e?.value);
    writer.writeObjectValue<PaymentLinksPostRequestBodySubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeObjectValue<PaymentLinksPostRequestBodyTaxIdCollection>(
        'tax_id_collection', taxIdCollection);
    writer.writeObjectValue<PaymentLinksPostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
