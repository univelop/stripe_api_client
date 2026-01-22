// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_after_completion.dart';
import './with_payment_link_post_request_body_automatic_tax.dart';
import './with_payment_link_post_request_body_billing_address_collection.dart';
import './with_payment_link_post_request_body_custom_fields.dart';
import './with_payment_link_post_request_body_custom_text.dart';
import './with_payment_link_post_request_body_customer_creation.dart';
import './with_payment_link_post_request_body_inactive_message.dart';
import './with_payment_link_post_request_body_invoice_creation.dart';
import './with_payment_link_post_request_body_line_items.dart';
import './with_payment_link_post_request_body_metadata.dart';
import './with_payment_link_post_request_body_name_collection.dart';
import './with_payment_link_post_request_body_payment_intent_data.dart';
import './with_payment_link_post_request_body_payment_method_collection.dart';
import './with_payment_link_post_request_body_payment_method_types.dart';
import './with_payment_link_post_request_body_phone_number_collection.dart';
import './with_payment_link_post_request_body_restrictions.dart';
import './with_payment_link_post_request_body_shipping_address_collection.dart';
import './with_payment_link_post_request_body_submit_type.dart';
import './with_payment_link_post_request_body_subscription_data.dart';
import './with_payment_link_post_request_body_tax_id_collection.dart';

/// auto generated
class WithPaymentLinkPostRequestBody implements Parsable {
  ///  Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
  bool? active;

  ///  Behavior after the purchase is complete.
  WithPaymentLinkPostRequestBodyAfterCompletion? afterCompletion;

  ///  Enables user redeemable promotion codes.
  bool? allowPromotionCodes;

  ///  Configuration for automatic tax collection.
  WithPaymentLinkPostRequestBodyAutomaticTax? automaticTax;

  ///  Configuration for collecting the customer's billing address. Defaults to `auto`.
  WithPaymentLinkPostRequestBodyBillingAddressCollection?
      billingAddressCollection;

  ///  Configures whether [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link create a [Customer](https://docs.stripe.com/api/customers).
  WithPaymentLinkPostRequestBodyCustomerCreation? customerCreation;

  ///  Collect additional information from your customer using custom fields. Up to 3 fields are supported.
  WithPaymentLinkPostRequestBodyCustomFields? customFields;

  ///  Display additional text for your customers using custom text.
  WithPaymentLinkPostRequestBodyCustomText? customText;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The custom message to be displayed to a customer when a payment link is no longer active.
  WithPaymentLinkPostRequestBodyInactiveMessage? inactiveMessage;

  ///  Generate a post-purchase Invoice for one-time payments.
  WithPaymentLinkPostRequestBodyInvoiceCreation? invoiceCreation;

  ///  The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
  Iterable<WithPaymentLinkPostRequestBodyLineItems>? lineItems;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link.
  WithPaymentLinkPostRequestBodyMetadata? metadata;

  ///  Controls settings applied for collecting the customer's name.
  WithPaymentLinkPostRequestBodyNameCollection? nameCollection;

  ///  A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  WithPaymentLinkPostRequestBodyPaymentIntentData? paymentIntentData;

  ///  Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.Can only be set in `subscription` mode. Defaults to `always`.If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials).
  WithPaymentLinkPostRequestBodyPaymentMethodCollection?
      paymentMethodCollection;

  ///  The list of payment method types that customers can use. Pass an empty string to enable dynamic payment methods that use your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
  WithPaymentLinkPostRequestBodyPaymentMethodTypes? paymentMethodTypes;

  ///  Controls phone number collection settings during checkout.We recommend that you review your privacy policy and check with your legal contacts.
  WithPaymentLinkPostRequestBodyPhoneNumberCollection? phoneNumberCollection;

  ///  Settings that restrict the usage of a payment link.
  WithPaymentLinkPostRequestBodyRestrictions? restrictions;

  ///  Configuration for collecting the customer's shipping address.
  WithPaymentLinkPostRequestBodyShippingAddressCollection?
      shippingAddressCollection;

  ///  Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://docs.stripe.com/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
  WithPaymentLinkPostRequestBodySubmitType? submitType;

  ///  When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
  WithPaymentLinkPostRequestBodySubscriptionData? subscriptionData;

  ///  Controls tax ID collection during checkout.
  WithPaymentLinkPostRequestBodyTaxIdCollection? taxIdCollection;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPaymentLinkPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['after_completion'] = (node) => afterCompletion =
        node.getObjectValue<WithPaymentLinkPostRequestBodyAfterCompletion>(
            WithPaymentLinkPostRequestBodyAfterCompletion
                .createFromDiscriminatorValue);
    deserializerMap['allow_promotion_codes'] =
        (node) => allowPromotionCodes = node.getBoolValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<WithPaymentLinkPostRequestBodyAutomaticTax>(
            WithPaymentLinkPostRequestBodyAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_address_collection'] = (node) =>
        billingAddressCollection = node.getEnumValue<
                WithPaymentLinkPostRequestBodyBillingAddressCollection>(
            (stringValue) =>
                WithPaymentLinkPostRequestBodyBillingAddressCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['customer_creation'] = (node) => customerCreation =
        node.getEnumValue<WithPaymentLinkPostRequestBodyCustomerCreation>(
            (stringValue) => WithPaymentLinkPostRequestBodyCustomerCreation
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getObjectValue<WithPaymentLinkPostRequestBodyCustomFields>(
            WithPaymentLinkPostRequestBodyCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['custom_text'] = (node) => customText = node.getObjectValue<
            WithPaymentLinkPostRequestBodyCustomText>(
        WithPaymentLinkPostRequestBodyCustomText.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['inactive_message'] = (node) => inactiveMessage =
        node.getObjectValue<WithPaymentLinkPostRequestBodyInactiveMessage>(
            WithPaymentLinkPostRequestBodyInactiveMessage
                .createFromDiscriminatorValue);
    deserializerMap['invoice_creation'] = (node) => invoiceCreation =
        node.getObjectValue<WithPaymentLinkPostRequestBodyInvoiceCreation>(
            WithPaymentLinkPostRequestBodyInvoiceCreation
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems = node
        .getCollectionOfObjectValues<WithPaymentLinkPostRequestBodyLineItems>(
            WithPaymentLinkPostRequestBodyLineItems
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            WithPaymentLinkPostRequestBodyMetadata>(
        WithPaymentLinkPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['name_collection'] = (node) => nameCollection =
        node.getObjectValue<WithPaymentLinkPostRequestBodyNameCollection>(
            WithPaymentLinkPostRequestBodyNameCollection
                .createFromDiscriminatorValue);
    deserializerMap['payment_intent_data'] = (node) => paymentIntentData =
        node.getObjectValue<WithPaymentLinkPostRequestBodyPaymentIntentData>(
            WithPaymentLinkPostRequestBodyPaymentIntentData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_collection'] = (node) =>
        paymentMethodCollection = node.getEnumValue<
                WithPaymentLinkPostRequestBodyPaymentMethodCollection>(
            (stringValue) =>
                WithPaymentLinkPostRequestBodyPaymentMethodCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getObjectValue<WithPaymentLinkPostRequestBodyPaymentMethodTypes>(
            WithPaymentLinkPostRequestBodyPaymentMethodTypes
                .createFromDiscriminatorValue);
    deserializerMap['phone_number_collection'] = (node) =>
        phoneNumberCollection = node.getObjectValue<
                WithPaymentLinkPostRequestBodyPhoneNumberCollection>(
            WithPaymentLinkPostRequestBodyPhoneNumberCollection
                .createFromDiscriminatorValue);
    deserializerMap['restrictions'] = (node) => restrictions =
        node.getObjectValue<WithPaymentLinkPostRequestBodyRestrictions>(
            WithPaymentLinkPostRequestBodyRestrictions
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address_collection'] = (node) =>
        shippingAddressCollection = node.getObjectValue<
                WithPaymentLinkPostRequestBodyShippingAddressCollection>(
            WithPaymentLinkPostRequestBodyShippingAddressCollection
                .createFromDiscriminatorValue);
    deserializerMap['submit_type'] = (node) => submitType =
        node.getEnumValue<WithPaymentLinkPostRequestBodySubmitType>(
            (stringValue) => WithPaymentLinkPostRequestBodySubmitType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<WithPaymentLinkPostRequestBodySubscriptionData>(
            WithPaymentLinkPostRequestBodySubscriptionData
                .createFromDiscriminatorValue);
    deserializerMap['tax_id_collection'] = (node) => taxIdCollection =
        node.getObjectValue<WithPaymentLinkPostRequestBodyTaxIdCollection>(
            WithPaymentLinkPostRequestBodyTaxIdCollection
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyAfterCompletion>(
        'after_completion', afterCompletion);
    writer.writeBoolValue('allow_promotion_codes', value: allowPromotionCodes);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer
        .writeEnumValue<WithPaymentLinkPostRequestBodyBillingAddressCollection>(
            'billing_address_collection',
            billingAddressCollection,
            (e) => e?.value);
    writer.writeEnumValue<WithPaymentLinkPostRequestBodyCustomerCreation>(
        'customer_creation', customerCreation, (e) => e?.value);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyCustomFields>(
        'custom_fields', customFields);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyCustomText>(
        'custom_text', customText);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyInactiveMessage>(
        'inactive_message', inactiveMessage);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyInvoiceCreation>(
        'invoice_creation', invoiceCreation);
    writer
        .writeCollectionOfObjectValues<WithPaymentLinkPostRequestBodyLineItems>(
            'line_items', lineItems);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyNameCollection>(
        'name_collection', nameCollection);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyPaymentIntentData>(
        'payment_intent_data', paymentIntentData);
    writer
        .writeEnumValue<WithPaymentLinkPostRequestBodyPaymentMethodCollection>(
            'payment_method_collection',
            paymentMethodCollection,
            (e) => e?.value);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes);
    writer
        .writeObjectValue<WithPaymentLinkPostRequestBodyPhoneNumberCollection>(
            'phone_number_collection', phoneNumberCollection);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyRestrictions>(
        'restrictions', restrictions);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyShippingAddressCollection>(
        'shipping_address_collection', shippingAddressCollection);
    writer.writeEnumValue<WithPaymentLinkPostRequestBodySubmitType>(
        'submit_type', submitType, (e) => e?.value);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodySubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeObjectValue<WithPaymentLinkPostRequestBodyTaxIdCollection>(
        'tax_id_collection', taxIdCollection);
  }
}
