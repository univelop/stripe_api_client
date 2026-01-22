// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_adaptive_pricing.dart';
import './sessions_post_request_body_after_expiration.dart';
import './sessions_post_request_body_automatic_tax.dart';
import './sessions_post_request_body_billing_address_collection.dart';
import './sessions_post_request_body_branding_settings.dart';
import './sessions_post_request_body_consent_collection.dart';
import './sessions_post_request_body_custom_fields.dart';
import './sessions_post_request_body_custom_text.dart';
import './sessions_post_request_body_customer_creation.dart';
import './sessions_post_request_body_customer_update.dart';
import './sessions_post_request_body_discounts.dart';
import './sessions_post_request_body_excluded_payment_method_types.dart';
import './sessions_post_request_body_invoice_creation.dart';
import './sessions_post_request_body_line_items.dart';
import './sessions_post_request_body_locale.dart';
import './sessions_post_request_body_metadata.dart';
import './sessions_post_request_body_mode.dart';
import './sessions_post_request_body_name_collection.dart';
import './sessions_post_request_body_optional_items.dart';
import './sessions_post_request_body_origin_context.dart';
import './sessions_post_request_body_payment_intent_data.dart';
import './sessions_post_request_body_payment_method_collection.dart';
import './sessions_post_request_body_payment_method_data.dart';
import './sessions_post_request_body_payment_method_options.dart';
import './sessions_post_request_body_payment_method_types.dart';
import './sessions_post_request_body_permissions.dart';
import './sessions_post_request_body_phone_number_collection.dart';
import './sessions_post_request_body_redirect_on_completion.dart';
import './sessions_post_request_body_saved_payment_method_options.dart';
import './sessions_post_request_body_setup_intent_data.dart';
import './sessions_post_request_body_shipping_address_collection.dart';
import './sessions_post_request_body_shipping_options.dart';
import './sessions_post_request_body_submit_type.dart';
import './sessions_post_request_body_subscription_data.dart';
import './sessions_post_request_body_tax_id_collection.dart';
import './sessions_post_request_body_ui_mode.dart';
import './sessions_post_request_body_wallet_options.dart';

/// auto generated
class SessionsPostRequestBody implements Parsable {
  ///  Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
  SessionsPostRequestBodyAdaptivePricing? adaptivePricing;

  ///  Configure actions after a Checkout Session has expired.
  SessionsPostRequestBodyAfterExpiration? afterExpiration;

  ///  Enables user redeemable promotion codes.
  bool? allowPromotionCodes;

  ///  Settings for automatic tax lookup for this session and resulting payments, invoices, and subscriptions.
  SessionsPostRequestBodyAutomaticTax? automaticTax;

  ///  Specify whether Checkout should collect the customer's billing address. Defaults to `auto`.
  SessionsPostRequestBodyBillingAddressCollection? billingAddressCollection;

  ///  The branding settings for the Checkout Session. This parameter is not allowed if ui_mode is `custom`.
  SessionsPostRequestBodyBrandingSettings? brandingSettings;

  ///  If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website. This parameter is not allowed if ui_mode is `embedded` or `custom`.
  String? cancelUrl;

  ///  A unique string to reference the Checkout Session. This can be acustomer ID, a cart ID, or similar, and can be used to reconcile thesession with your internal systems.
  String? clientReferenceId;

  ///  Configure fields for the Checkout Session to gather active consent from customers.
  SessionsPostRequestBodyConsentCollection? consentCollection;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Required in `setup` mode when `payment_method_types` is not set.
  String? currency;

  ///  ID of an existing Customer, if one exists. In `payment` mode, the customer’s most recently saved cardpayment method will be used to prefill the email, name, card details, and billing addresson the Checkout page. In `subscription` mode, the customer’s [default payment method](https://docs.stripe.com/api/customers/update#update_customer-invoice_settings-default_payment_method)will be used if it’s a card, otherwise the most recently saved card will be used. A valid billing address, billing name and billing email are required on the payment method for Checkout to prefill the customer's card details.If the Customer already has a valid [email](https://docs.stripe.com/api/customers/object#customer_object-email) set, the email will be prefilled and not editable in Checkout.If the Customer does not have a valid `email`, Checkout will set the email entered during the session on the Customer.If blank for Checkout Sessions in `subscription` mode or with `customer_creation` set as `always` in `payment` mode, Checkout will create a new Customer object based on information provided during the payment flow.You can set [`payment_intent_data.setup_future_usage`](https://docs.stripe.com/api/checkout/sessions/create#create_checkout_session-payment_intent_data-setup_future_usage) to have Checkout automatically attach the payment method to the Customer you pass in for future reuse.
  String? customer;

  ///  ID of an existing Account, if one exists. Has the same behavior as `customer`.
  String? customerAccount;

  ///  Configure whether a Checkout Session creates a [Customer](https://docs.stripe.com/api/customers) during Session confirmation.When a Customer is not created, you can still retrieve email, address, and other customer data entered in Checkoutwith [customer_details](https://docs.stripe.com/api/checkout/sessions/object#checkout_session_object-customer_details).Sessions that don't create Customers instead are grouped by [guest customers](https://docs.stripe.com/payments/checkout/guest-customers)in the Dashboard. Promotion codes limited to first time customers will return invalid for these Sessions.Can only be set in `payment` and `setup` mode.
  SessionsPostRequestBodyCustomerCreation? customerCreation;

  ///  If provided, this value will be used when the Customer object is created.If not provided, customers will be asked to enter their email address.Use this parameter to prefill customer data if you already have an emailon file. To access information about the customer once a session iscomplete, use the `customer` field.
  String? customerEmail;

  ///  Controls what fields on Customer can be updated by the Checkout Session. Can only be provided when `customer` is provided.
  SessionsPostRequestBodyCustomerUpdate? customerUpdate;

  ///  Collect additional information from your customer using custom fields. Up to 3 fields are supported.
  Iterable<SessionsPostRequestBodyCustomFields>? customFields;

  ///  Display additional text for your customers using custom text.
  SessionsPostRequestBodyCustomText? customText;

  ///  The coupon or promotion code to apply to this Session. Currently, only up to one may be specified.
  Iterable<SessionsPostRequestBodyDiscounts>? discounts;

  ///  A list of the types of payment methods (e.g., `card`) that should be excluded from this Checkout Session. This should only be used when payment methods for this Checkout Session are managed through the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
  Iterable<SessionsPostRequestBodyExcludedPaymentMethodTypes>?
      excludedPaymentMethodTypes;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The Epoch time in seconds at which the Checkout Session will expire. It can be anywhere from 30 minutes to 24 hours after Checkout Session creation. By default, this value is 24 hours from creation.
  int? expiresAt;

  ///  Generate a post-purchase Invoice for one-time payments.
  SessionsPostRequestBodyInvoiceCreation? invoiceCreation;

  ///  A list of items the customer is purchasing. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices). The parameter is required for `payment` and `subscription` mode.For `payment` mode, there is a maximum of 100 line items, however it is recommended to consolidate line items if there are more than a few dozen.For `subscription` mode, there is a maximum of 20 line items with recurring Prices and 20 line items with one-time Prices. Line items with one-time Prices will be on the initial invoice only.
  Iterable<SessionsPostRequestBodyLineItems>? lineItems;

  ///  The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
  SessionsPostRequestBodyLocale? locale;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  SessionsPostRequestBodyMetadata? metadata;

  ///  The mode of the Checkout Session. Pass `subscription` if the Checkout Session includes at least one recurring item.
  SessionsPostRequestBodyMode? mode;

  ///  Controls name collection settings for the session.You can configure Checkout to collect your customers' business names, individual names, or both. Each name field can be either required or optional.If a [Customer](https://docs.stripe.com/api/customers) is created or provided, the names can be saved to the Customer object as well.
  SessionsPostRequestBodyNameCollection? nameCollection;

  ///  A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices).There is a maximum of 10 optional items allowed on a Checkout Session, and the existing limits on the number of line items allowed on a Checkout Session apply to the combined number of line items and optional items.For `payment` mode, there is a maximum of 100 combined line items and optional items, however it is recommended to consolidate items if there are more than a few dozen.For `subscription` mode, there is a maximum of 20 line items and optional items with recurring Prices and 20 line items and optional items with one-time Prices.
  Iterable<SessionsPostRequestBodyOptionalItems>? optionalItems;

  ///  Where the user is coming from. This informs the optimizations that are applied to the session.
  SessionsPostRequestBodyOriginContext? originContext;

  ///  A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
  SessionsPostRequestBodyPaymentIntentData? paymentIntentData;

  ///  Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.Can only be set in `subscription` mode. Defaults to `always`.If you'd like information on how to collect a payment method outside of Checkout, read the guide on configuring [subscriptions with a free trial](https://docs.stripe.com/payments/checkout/free-trials).
  SessionsPostRequestBodyPaymentMethodCollection? paymentMethodCollection;

  ///  The ID of the payment method configuration to use with this Checkout session.
  String? paymentMethodConfiguration;

  ///  This parameter allows you to set some attributes on the payment method created during a Checkout session.
  SessionsPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment-method-specific configuration.
  SessionsPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  A list of the types of payment methods (e.g., `card`) this Checkout Session can accept.You can omit this attribute to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).See [Dynamic Payment Methods](https://docs.stripe.com/payments/payment-methods/integration-options#using-dynamic-payment-methods) for more details.Read more about the supported payment methods and their requirements in our [paymentmethod details guide](/docs/payments/checkout/payment-methods).If multiple payment methods are passed, Checkout will dynamically reorder them toprioritize the most relevant payment methods based on the customer's location andother characteristics.
  Iterable<SessionsPostRequestBodyPaymentMethodTypes>? paymentMethodTypes;

  ///  This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object. Can only be set when creating `embedded` or `custom` sessions.For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
  SessionsPostRequestBodyPermissions? permissions;

  ///  Controls phone number collection settings for the session.We recommend that you review your privacy policy and check with your legal contactsbefore using this feature. Learn more about [collecting phone numbers with Checkout](https://docs.stripe.com/payments/checkout/phone-numbers).
  SessionsPostRequestBodyPhoneNumberCollection? phoneNumberCollection;

  ///  This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://docs.stripe.com/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
  SessionsPostRequestBodyRedirectOnCompletion? redirectOnCompletion;

  ///  The URL to redirect your customer back to after they authenticate or cancel their payment on thepayment method's app or site. This parameter is required if `ui_mode` is `embedded` or `custom`and redirect-based payment methods are enabled on the session.
  String? returnUrl;

  ///  Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
  SessionsPostRequestBodySavedPaymentMethodOptions? savedPaymentMethodOptions;

  ///  A subset of parameters to be passed to SetupIntent creation for Checkout Sessions in `setup` mode.
  SessionsPostRequestBodySetupIntentData? setupIntentData;

  ///  When set, provides configuration for Checkout to collect a shipping address from a customer.
  SessionsPostRequestBodyShippingAddressCollection? shippingAddressCollection;

  ///  The shipping rate options to apply to this Session. Up to a maximum of 5.
  Iterable<SessionsPostRequestBodyShippingOptions>? shippingOptions;

  ///  Describes the type of transaction being performed by Checkout in orderto customize relevant text on the page, such as the submit button. `submit_type` can only be specified on Checkout Sessions in`payment` or `subscription` mode. If blank or `auto`, `pay` is used.
  SessionsPostRequestBodySubmitType? submitType;

  ///  A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
  SessionsPostRequestBodySubscriptionData? subscriptionData;

  ///  The URL to which Stripe should send customers when payment or setupis complete.This parameter is not allowed if ui_mode is `embedded` or `custom`. If you'd like to useinformation from the successful Checkout Session on your page, read theguide on [customizing your success page](https://docs.stripe.com/payments/checkout/custom-success-page).
  String? successUrl;

  ///  Controls tax ID collection during checkout.
  SessionsPostRequestBodyTaxIdCollection? taxIdCollection;

  ///  The UI mode of the Session. Defaults to `hosted`.
  SessionsPostRequestBodyUiMode? uiMode;

  ///  Wallet-specific configuration.
  SessionsPostRequestBodyWalletOptions? walletOptions;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adaptive_pricing'] = (node) => adaptivePricing =
        node.getObjectValue<SessionsPostRequestBodyAdaptivePricing>(
            SessionsPostRequestBodyAdaptivePricing
                .createFromDiscriminatorValue);
    deserializerMap['after_expiration'] = (node) => afterExpiration =
        node.getObjectValue<SessionsPostRequestBodyAfterExpiration>(
            SessionsPostRequestBodyAfterExpiration
                .createFromDiscriminatorValue);
    deserializerMap['allow_promotion_codes'] =
        (node) => allowPromotionCodes = node.getBoolValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<SessionsPostRequestBodyAutomaticTax>(
            SessionsPostRequestBodyAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['billing_address_collection'] = (node) =>
        billingAddressCollection =
            node.getEnumValue<SessionsPostRequestBodyBillingAddressCollection>(
                (stringValue) => SessionsPostRequestBodyBillingAddressCollection
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['branding_settings'] = (node) => brandingSettings =
        node.getObjectValue<SessionsPostRequestBodyBrandingSettings>(
            SessionsPostRequestBodyBrandingSettings
                .createFromDiscriminatorValue);
    deserializerMap['cancel_url'] = (node) => cancelUrl = node.getStringValue();
    deserializerMap['client_reference_id'] =
        (node) => clientReferenceId = node.getStringValue();
    deserializerMap['consent_collection'] = (node) => consentCollection =
        node.getObjectValue<SessionsPostRequestBodyConsentCollection>(
            SessionsPostRequestBodyConsentCollection
                .createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['customer_creation'] = (node) => customerCreation =
        node.getEnumValue<SessionsPostRequestBodyCustomerCreation>(
            (stringValue) => SessionsPostRequestBodyCustomerCreation.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customer_email'] =
        (node) => customerEmail = node.getStringValue();
    deserializerMap['customer_update'] = (node) => customerUpdate =
        node.getObjectValue<SessionsPostRequestBodyCustomerUpdate>(
            SessionsPostRequestBodyCustomerUpdate.createFromDiscriminatorValue);
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getCollectionOfObjectValues<SessionsPostRequestBodyCustomFields>(
            SessionsPostRequestBodyCustomFields.createFromDiscriminatorValue);
    deserializerMap['custom_text'] = (node) => customText =
        node.getObjectValue<SessionsPostRequestBodyCustomText>(
            SessionsPostRequestBodyCustomText.createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<SessionsPostRequestBodyDiscounts>(
            SessionsPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes = node.getCollectionOfEnumValues<
                SessionsPostRequestBodyExcludedPaymentMethodTypes>(
            (stringValue) => SessionsPostRequestBodyExcludedPaymentMethodTypes
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['invoice_creation'] = (node) => invoiceCreation =
        node.getObjectValue<SessionsPostRequestBodyInvoiceCreation>(
            SessionsPostRequestBodyInvoiceCreation
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<SessionsPostRequestBodyLineItems>(
            SessionsPostRequestBodyLineItems.createFromDiscriminatorValue);
    deserializerMap['locale'] = (node) => locale =
        node.getEnumValue<SessionsPostRequestBodyLocale>((stringValue) =>
            SessionsPostRequestBodyLocale.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SessionsPostRequestBodyMetadata>(
            SessionsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['mode'] = (node) => mode =
        node.getEnumValue<SessionsPostRequestBodyMode>((stringValue) =>
            SessionsPostRequestBodyMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['name_collection'] = (node) => nameCollection =
        node.getObjectValue<SessionsPostRequestBodyNameCollection>(
            SessionsPostRequestBodyNameCollection.createFromDiscriminatorValue);
    deserializerMap['optional_items'] = (node) => optionalItems =
        node.getCollectionOfObjectValues<SessionsPostRequestBodyOptionalItems>(
            SessionsPostRequestBodyOptionalItems.createFromDiscriminatorValue);
    deserializerMap['origin_context'] = (node) => originContext =
        node.getEnumValue<SessionsPostRequestBodyOriginContext>((stringValue) =>
            SessionsPostRequestBodyOriginContext.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_intent_data'] = (node) => paymentIntentData =
        node.getObjectValue<SessionsPostRequestBodyPaymentIntentData>(
            SessionsPostRequestBodyPaymentIntentData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_collection'] = (node) =>
        paymentMethodCollection =
            node.getEnumValue<SessionsPostRequestBodyPaymentMethodCollection>(
                (stringValue) => SessionsPostRequestBodyPaymentMethodCollection
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_configuration'] =
        (node) => paymentMethodConfiguration = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodData>(
            SessionsPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptions>(
            SessionsPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getCollectionOfEnumValues<
                SessionsPostRequestBodyPaymentMethodTypes>(
            (stringValue) => SessionsPostRequestBodyPaymentMethodTypes.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['permissions'] = (node) => permissions =
        node.getObjectValue<SessionsPostRequestBodyPermissions>(
            SessionsPostRequestBodyPermissions.createFromDiscriminatorValue);
    deserializerMap['phone_number_collection'] = (node) =>
        phoneNumberCollection =
            node.getObjectValue<SessionsPostRequestBodyPhoneNumberCollection>(
                SessionsPostRequestBodyPhoneNumberCollection
                    .createFromDiscriminatorValue);
    deserializerMap['redirect_on_completion'] = (node) => redirectOnCompletion =
        node.getEnumValue<SessionsPostRequestBodyRedirectOnCompletion>(
            (stringValue) => SessionsPostRequestBodyRedirectOnCompletion.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['saved_payment_method_options'] = (node) =>
        savedPaymentMethodOptions = node
            .getObjectValue<SessionsPostRequestBodySavedPaymentMethodOptions>(
                SessionsPostRequestBodySavedPaymentMethodOptions
                    .createFromDiscriminatorValue);
    deserializerMap['setup_intent_data'] = (node) => setupIntentData =
        node.getObjectValue<SessionsPostRequestBodySetupIntentData>(
            SessionsPostRequestBodySetupIntentData
                .createFromDiscriminatorValue);
    deserializerMap['shipping_address_collection'] = (node) =>
        shippingAddressCollection = node
            .getObjectValue<SessionsPostRequestBodyShippingAddressCollection>(
                SessionsPostRequestBodyShippingAddressCollection
                    .createFromDiscriminatorValue);
    deserializerMap['shipping_options'] = (node) => shippingOptions = node
        .getCollectionOfObjectValues<SessionsPostRequestBodyShippingOptions>(
            SessionsPostRequestBodyShippingOptions
                .createFromDiscriminatorValue);
    deserializerMap['submit_type'] = (node) => submitType =
        node.getEnumValue<SessionsPostRequestBodySubmitType>((stringValue) =>
            SessionsPostRequestBodySubmitType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<SessionsPostRequestBodySubscriptionData>(
            SessionsPostRequestBodySubscriptionData
                .createFromDiscriminatorValue);
    deserializerMap['success_url'] =
        (node) => successUrl = node.getStringValue();
    deserializerMap['tax_id_collection'] = (node) => taxIdCollection =
        node.getObjectValue<SessionsPostRequestBodyTaxIdCollection>(
            SessionsPostRequestBodyTaxIdCollection
                .createFromDiscriminatorValue);
    deserializerMap['ui_mode'] = (node) => uiMode =
        node.getEnumValue<SessionsPostRequestBodyUiMode>((stringValue) =>
            SessionsPostRequestBodyUiMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['wallet_options'] = (node) => walletOptions =
        node.getObjectValue<SessionsPostRequestBodyWalletOptions>(
            SessionsPostRequestBodyWalletOptions.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyAdaptivePricing>(
        'adaptive_pricing', adaptivePricing);
    writer.writeObjectValue<SessionsPostRequestBodyAfterExpiration>(
        'after_expiration', afterExpiration);
    writer.writeBoolValue('allow_promotion_codes', value: allowPromotionCodes);
    writer.writeObjectValue<SessionsPostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<SessionsPostRequestBodyBillingAddressCollection>(
        'billing_address_collection',
        billingAddressCollection,
        (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyBrandingSettings>(
        'branding_settings', brandingSettings);
    writer.writeStringValue('cancel_url', cancelUrl);
    writer.writeStringValue('client_reference_id', clientReferenceId);
    writer.writeObjectValue<SessionsPostRequestBodyConsentCollection>(
        'consent_collection', consentCollection);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeEnumValue<SessionsPostRequestBodyCustomerCreation>(
        'customer_creation', customerCreation, (e) => e?.value);
    writer.writeStringValue('customer_email', customerEmail);
    writer.writeObjectValue<SessionsPostRequestBodyCustomerUpdate>(
        'customer_update', customerUpdate);
    writer.writeCollectionOfObjectValues<SessionsPostRequestBodyCustomFields>(
        'custom_fields', customFields);
    writer.writeObjectValue<SessionsPostRequestBodyCustomText>(
        'custom_text', customText);
    writer.writeCollectionOfObjectValues<SessionsPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfEnumValues<
            SessionsPostRequestBodyExcludedPaymentMethodTypes>(
        'excluded_payment_method_types',
        excludedPaymentMethodTypes,
        (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeObjectValue<SessionsPostRequestBodyInvoiceCreation>(
        'invoice_creation', invoiceCreation);
    writer.writeCollectionOfObjectValues<SessionsPostRequestBodyLineItems>(
        'line_items', lineItems);
    writer.writeEnumValue<SessionsPostRequestBodyLocale>(
        'locale', locale, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<SessionsPostRequestBodyMode>(
        'mode', mode, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyNameCollection>(
        'name_collection', nameCollection);
    writer.writeCollectionOfObjectValues<SessionsPostRequestBodyOptionalItems>(
        'optional_items', optionalItems);
    writer.writeEnumValue<SessionsPostRequestBodyOriginContext>(
        'origin_context', originContext, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentIntentData>(
        'payment_intent_data', paymentIntentData);
    writer.writeEnumValue<SessionsPostRequestBodyPaymentMethodCollection>(
        'payment_method_collection', paymentMethodCollection, (e) => e?.value);
    writer.writeStringValue(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer
        .writeCollectionOfEnumValues<SessionsPostRequestBodyPaymentMethodTypes>(
            'payment_method_types', paymentMethodTypes, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyPermissions>(
        'permissions', permissions);
    writer.writeObjectValue<SessionsPostRequestBodyPhoneNumberCollection>(
        'phone_number_collection', phoneNumberCollection);
    writer.writeEnumValue<SessionsPostRequestBodyRedirectOnCompletion>(
        'redirect_on_completion', redirectOnCompletion, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeObjectValue<SessionsPostRequestBodySavedPaymentMethodOptions>(
        'saved_payment_method_options', savedPaymentMethodOptions);
    writer.writeObjectValue<SessionsPostRequestBodySetupIntentData>(
        'setup_intent_data', setupIntentData);
    writer.writeObjectValue<SessionsPostRequestBodyShippingAddressCollection>(
        'shipping_address_collection', shippingAddressCollection);
    writer
        .writeCollectionOfObjectValues<SessionsPostRequestBodyShippingOptions>(
            'shipping_options', shippingOptions);
    writer.writeEnumValue<SessionsPostRequestBodySubmitType>(
        'submit_type', submitType, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodySubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeStringValue('success_url', successUrl);
    writer.writeObjectValue<SessionsPostRequestBodyTaxIdCollection>(
        'tax_id_collection', taxIdCollection);
    writer.writeEnumValue<SessionsPostRequestBodyUiMode>(
        'ui_mode', uiMode, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyWalletOptions>(
        'wallet_options', walletOptions);
  }
}
