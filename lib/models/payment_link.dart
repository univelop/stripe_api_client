// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_link_application.dart';
import './payment_link_billing_address_collection.dart';
import './payment_link_customer_creation.dart';
import './payment_link_line_items.dart';
import './payment_link_metadata.dart';
import './payment_link_object.dart';
import './payment_link_on_behalf_of.dart';
import './payment_link_payment_method_collection.dart';
import './payment_link_payment_method_types.dart';
import './payment_link_submit_type.dart';
import './payment_links_resource_after_completion.dart';
import './payment_links_resource_automatic_tax.dart';
import './payment_links_resource_consent_collection.dart';
import './payment_links_resource_custom_fields.dart';
import './payment_links_resource_custom_text.dart';
import './payment_links_resource_invoice_creation.dart';
import './payment_links_resource_name_collection.dart';
import './payment_links_resource_optional_item.dart';
import './payment_links_resource_payment_intent_data.dart';
import './payment_links_resource_phone_number_collection.dart';
import './payment_links_resource_restrictions.dart';
import './payment_links_resource_shipping_address_collection.dart';
import './payment_links_resource_shipping_option.dart';
import './payment_links_resource_subscription_data.dart';
import './payment_links_resource_tax_id_collection.dart';
import './payment_links_resource_transfer_data.dart';

/// auto generated
/// A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.When a customer opens a payment link it will open a new [checkout session](https://docs.stripe.com/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://docs.stripe.com/api/events/types#event_types-checkout.session.completed) to track payments through payment links.Related guide: [Payment Links API](https://docs.stripe.com/payment-links)
class PaymentLink implements AdditionalDataHolder, Parsable {
  ///  Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The after_completion property
  PaymentLinksResourceAfterCompletion? afterCompletion;

  ///  Whether user redeemable promotion codes are enabled.
  bool? allowPromotionCodes;

  ///  The ID of the Connect application that created the Payment Link.
  PaymentLinkApplication? application;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
  int? applicationFeeAmount;

  ///  This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
  double? applicationFeePercent;

  ///  The automatic_tax property
  PaymentLinksResourceAutomaticTax? automaticTax;

  ///  Configuration for collecting the customer's billing address. Defaults to `auto`.
  PaymentLinkBillingAddressCollection? billingAddressCollection;

  ///  When set, provides configuration to gather active consent from customers.
  PaymentLinksResourceConsentCollection? consentCollection;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Configuration for Customer creation during checkout.
  PaymentLinkCustomerCreation? customerCreation;

  ///  Collect additional information from your customer using custom fields. Up to 3 fields are supported.
  Iterable<PaymentLinksResourceCustomFields>? customFields;

  ///  The custom_text property
  PaymentLinksResourceCustomText? customText;

  ///  Unique identifier for the object.
  String? id;

  ///  The custom message to be displayed to a customer when a payment link is no longer active.
  String? inactiveMessage;

  ///  Configuration for creating invoice for payment mode payment links.
  PaymentLinksResourceInvoiceCreation? invoiceCreation;

  ///  The line items representing what is being sold.
  PaymentLinkLineItems? lineItems;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PaymentLinkMetadata? metadata;

  ///  The name_collection property
  PaymentLinksResourceNameCollection? nameCollection;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentLinkObject? object;

  ///  The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
  PaymentLinkOnBehalfOf? onBehalfOf;

  ///  The optional items presented to the customer at checkout.
  Iterable<PaymentLinksResourceOptionalItem>? optionalItems;

  ///  Indicates the parameters to be passed to PaymentIntent creation during checkout.
  PaymentLinksResourcePaymentIntentData? paymentIntentData;

  ///  Configuration for collecting a payment method during checkout. Defaults to `always`.
  PaymentLinkPaymentMethodCollection? paymentMethodCollection;

  ///  The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
  Iterable<PaymentLinkPaymentMethodTypes>? paymentMethodTypes;

  ///  The phone_number_collection property
  PaymentLinksResourcePhoneNumberCollection? phoneNumberCollection;

  ///  Settings that restrict the usage of a payment link.
  PaymentLinksResourceRestrictions? restrictions;

  ///  Configuration for collecting the customer's shipping address.
  PaymentLinksResourceShippingAddressCollection? shippingAddressCollection;

  ///  The shipping rate options applied to the session.
  Iterable<PaymentLinksResourceShippingOption>? shippingOptions;

  ///  Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
  PaymentLinkSubmitType? submitType;

  ///  When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
  PaymentLinksResourceSubscriptionData? subscriptionData;

  ///  The tax_id_collection property
  PaymentLinksResourceTaxIdCollection? taxIdCollection;

  ///  The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
  PaymentLinksResourceTransferData? transferData;

  ///  The public URL that can be shared with customers.
  String? url;

  /// Instantiates a new [PaymentLink] and sets the default values.
  PaymentLink() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLink createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLink();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['after_completion'] = (node) => afterCompletion =
        node.getObjectValue<PaymentLinksResourceAfterCompletion>(
            PaymentLinksResourceAfterCompletion.createFromDiscriminatorValue);
    deserializerMap['allow_promotion_codes'] =
        (node) => allowPromotionCodes = node.getBoolValue();
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<PaymentLinkApplication>(
            PaymentLinkApplication.createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<PaymentLinksResourceAutomaticTax>(
            PaymentLinksResourceAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['billing_address_collection'] = (node) =>
        billingAddressCollection =
            node.getEnumValue<PaymentLinkBillingAddressCollection>(
                (stringValue) => PaymentLinkBillingAddressCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['consent_collection'] = (node) => consentCollection =
        node.getObjectValue<PaymentLinksResourceConsentCollection>(
            PaymentLinksResourceConsentCollection.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer_creation'] = (node) => customerCreation =
        node.getEnumValue<PaymentLinkCustomerCreation>((stringValue) =>
            PaymentLinkCustomerCreation.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getCollectionOfObjectValues<PaymentLinksResourceCustomFields>(
            PaymentLinksResourceCustomFields.createFromDiscriminatorValue);
    deserializerMap['custom_text'] = (node) => customText =
        node.getObjectValue<PaymentLinksResourceCustomText>(
            PaymentLinksResourceCustomText.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['inactive_message'] =
        (node) => inactiveMessage = node.getStringValue();
    deserializerMap['invoice_creation'] = (node) => invoiceCreation =
        node.getObjectValue<PaymentLinksResourceInvoiceCreation>(
            PaymentLinksResourceInvoiceCreation.createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<PaymentLinkLineItems>(
            PaymentLinkLineItems.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentLinkMetadata>(
            PaymentLinkMetadata.createFromDiscriminatorValue);
    deserializerMap['name_collection'] = (node) => nameCollection =
        node.getObjectValue<PaymentLinksResourceNameCollection>(
            PaymentLinksResourceNameCollection.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentLinkObject>((stringValue) => PaymentLinkObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<PaymentLinkOnBehalfOf>(
            PaymentLinkOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['optional_items'] = (node) => optionalItems =
        node.getCollectionOfObjectValues<PaymentLinksResourceOptionalItem>(
            PaymentLinksResourceOptionalItem.createFromDiscriminatorValue);
    deserializerMap['payment_intent_data'] = (node) => paymentIntentData =
        node.getObjectValue<PaymentLinksResourcePaymentIntentData>(
            PaymentLinksResourcePaymentIntentData.createFromDiscriminatorValue);
    deserializerMap['payment_method_collection'] = (node) =>
        paymentMethodCollection =
            node.getEnumValue<PaymentLinkPaymentMethodCollection>(
                (stringValue) => PaymentLinkPaymentMethodCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getCollectionOfEnumValues<PaymentLinkPaymentMethodTypes>(
            (stringValue) => PaymentLinkPaymentMethodTypes.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['phone_number_collection'] = (node) =>
        phoneNumberCollection =
            node.getObjectValue<PaymentLinksResourcePhoneNumberCollection>(
                PaymentLinksResourcePhoneNumberCollection
                    .createFromDiscriminatorValue);
    deserializerMap['restrictions'] = (node) => restrictions =
        node.getObjectValue<PaymentLinksResourceRestrictions>(
            PaymentLinksResourceRestrictions.createFromDiscriminatorValue);
    deserializerMap['shipping_address_collection'] = (node) =>
        shippingAddressCollection =
            node.getObjectValue<PaymentLinksResourceShippingAddressCollection>(
                PaymentLinksResourceShippingAddressCollection
                    .createFromDiscriminatorValue);
    deserializerMap['shipping_options'] = (node) => shippingOptions =
        node.getCollectionOfObjectValues<PaymentLinksResourceShippingOption>(
            PaymentLinksResourceShippingOption.createFromDiscriminatorValue);
    deserializerMap['submit_type'] = (node) => submitType =
        node.getEnumValue<PaymentLinkSubmitType>((stringValue) =>
            PaymentLinkSubmitType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<PaymentLinksResourceSubscriptionData>(
            PaymentLinksResourceSubscriptionData.createFromDiscriminatorValue);
    deserializerMap['tax_id_collection'] = (node) => taxIdCollection =
        node.getObjectValue<PaymentLinksResourceTaxIdCollection>(
            PaymentLinksResourceTaxIdCollection.createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<PaymentLinksResourceTransferData>(
            PaymentLinksResourceTransferData.createFromDiscriminatorValue);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeObjectValue<PaymentLinksResourceAfterCompletion>(
        'after_completion', afterCompletion);
    writer.writeBoolValue('allow_promotion_codes', value: allowPromotionCodes);
    writer.writeObjectValue<PaymentLinkApplication>('application', application);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<PaymentLinksResourceAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<PaymentLinkBillingAddressCollection>(
        'billing_address_collection',
        billingAddressCollection,
        (e) => e?.value);
    writer.writeObjectValue<PaymentLinksResourceConsentCollection>(
        'consent_collection', consentCollection);
    writer.writeStringValue('currency', currency);
    writer.writeEnumValue<PaymentLinkCustomerCreation>(
        'customer_creation', customerCreation, (e) => e?.value);
    writer.writeCollectionOfObjectValues<PaymentLinksResourceCustomFields>(
        'custom_fields', customFields);
    writer.writeObjectValue<PaymentLinksResourceCustomText>(
        'custom_text', customText);
    writer.writeStringValue('id', id);
    writer.writeStringValue('inactive_message', inactiveMessage);
    writer.writeObjectValue<PaymentLinksResourceInvoiceCreation>(
        'invoice_creation', invoiceCreation);
    writer.writeObjectValue<PaymentLinkLineItems>('line_items', lineItems);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PaymentLinkMetadata>('metadata', metadata);
    writer.writeObjectValue<PaymentLinksResourceNameCollection>(
        'name_collection', nameCollection);
    writer.writeEnumValue<PaymentLinkObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<PaymentLinkOnBehalfOf>('on_behalf_of', onBehalfOf);
    writer.writeCollectionOfObjectValues<PaymentLinksResourceOptionalItem>(
        'optional_items', optionalItems);
    writer.writeObjectValue<PaymentLinksResourcePaymentIntentData>(
        'payment_intent_data', paymentIntentData);
    writer.writeEnumValue<PaymentLinkPaymentMethodCollection>(
        'payment_method_collection', paymentMethodCollection, (e) => e?.value);
    writer.writeCollectionOfEnumValues<PaymentLinkPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes, (e) => e?.value);
    writer.writeObjectValue<PaymentLinksResourcePhoneNumberCollection>(
        'phone_number_collection', phoneNumberCollection);
    writer.writeObjectValue<PaymentLinksResourceRestrictions>(
        'restrictions', restrictions);
    writer.writeObjectValue<PaymentLinksResourceShippingAddressCollection>(
        'shipping_address_collection', shippingAddressCollection);
    writer.writeCollectionOfObjectValues<PaymentLinksResourceShippingOption>(
        'shipping_options', shippingOptions);
    writer.writeEnumValue<PaymentLinkSubmitType>(
        'submit_type', submitType, (e) => e?.value);
    writer.writeObjectValue<PaymentLinksResourceSubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeObjectValue<PaymentLinksResourceTaxIdCollection>(
        'tax_id_collection', taxIdCollection);
    writer.writeObjectValue<PaymentLinksResourceTransferData>(
        'transfer_data', transferData);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
