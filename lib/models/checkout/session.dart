// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../checkout_session_payment_method_options.dart';
import '../checkout_session_wallet_options.dart';
import '../payment_flows_payment_intent_presentment_details.dart';
import '../payment_method_config_biz_payment_method_configuration_details.dart';
import '../payment_pages_checkout_session_adaptive_pricing.dart';
import '../payment_pages_checkout_session_after_expiration.dart';
import '../payment_pages_checkout_session_automatic_tax.dart';
import '../payment_pages_checkout_session_branding_settings.dart';
import '../payment_pages_checkout_session_collected_information.dart';
import '../payment_pages_checkout_session_consent.dart';
import '../payment_pages_checkout_session_consent_collection.dart';
import '../payment_pages_checkout_session_currency_conversion.dart';
import '../payment_pages_checkout_session_custom_fields.dart';
import '../payment_pages_checkout_session_custom_text.dart';
import '../payment_pages_checkout_session_customer_details.dart';
import '../payment_pages_checkout_session_discount.dart';
import '../payment_pages_checkout_session_invoice_creation.dart';
import '../payment_pages_checkout_session_name_collection.dart';
import '../payment_pages_checkout_session_optional_item.dart';
import '../payment_pages_checkout_session_permissions.dart';
import '../payment_pages_checkout_session_phone_number_collection.dart';
import '../payment_pages_checkout_session_saved_payment_method_options.dart';
import '../payment_pages_checkout_session_shipping_address_collection.dart';
import '../payment_pages_checkout_session_shipping_cost.dart';
import '../payment_pages_checkout_session_shipping_option.dart';
import '../payment_pages_checkout_session_tax_id_collection.dart';
import '../payment_pages_checkout_session_total_details.dart';
import './session_billing_address_collection.dart';
import './session_customer.dart';
import './session_customer_creation.dart';
import './session_invoice.dart';
import './session_line_items.dart';
import './session_locale.dart';
import './session_metadata.dart';
import './session_mode.dart';
import './session_object.dart';
import './session_origin_context.dart';
import './session_payment_intent.dart';
import './session_payment_link.dart';
import './session_payment_method_collection.dart';
import './session_payment_status.dart';
import './session_redirect_on_completion.dart';
import './session_setup_intent.dart';
import './session_status.dart';
import './session_submit_type.dart';
import './session_subscription.dart';
import './session_ui_mode.dart';

/// auto generated
/// A Checkout Session represents your customer's session as they pay forone-time purchases or subscriptions through [Checkout](https://docs.stripe.com/payments/checkout)or [Payment Links](https://docs.stripe.com/payments/payment-links). We recommend creating anew Session each time your customer attempts to pay.Once payment is successful, the Checkout Session will contain a referenceto the [Customer](https://docs.stripe.com/api/customers), and either the successful[PaymentIntent](https://docs.stripe.com/api/payment_intents) or an active[Subscription](https://docs.stripe.com/api/subscriptions).You can create a Checkout Session on your server and redirect to its URLto begin Checkout.Related guide: [Checkout quickstart](https://docs.stripe.com/checkout/quickstart)
class Session implements AdditionalDataHolder, Parsable {
  ///  Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
  PaymentPagesCheckoutSessionAdaptivePricing? adaptivePricing;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  When set, provides configuration for actions to take if this Checkout Session expires.
  PaymentPagesCheckoutSessionAfterExpiration? afterExpiration;

  ///  Enables user redeemable promotion codes.
  bool? allowPromotionCodes;

  ///  Total of all items before discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total of all items after discounts and taxes are applied.
  int? amountTotal;

  ///  The automatic_tax property
  PaymentPagesCheckoutSessionAutomaticTax? automaticTax;

  ///  Describes whether Checkout should collect the customer's billing address. Defaults to `auto`.
  SessionBillingAddressCollection? billingAddressCollection;

  ///  The branding_settings property
  PaymentPagesCheckoutSessionBrandingSettings? brandingSettings;

  ///  If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website.
  String? cancelUrl;

  ///  A unique string to reference the Checkout Session. This can be acustomer ID, a cart ID, or similar, and can be used to reconcile theSession with your internal systems.
  String? clientReferenceId;

  ///  The client secret of your Checkout Session. Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. For `ui_mode: embedded`, the client secret is to be used when initializing Stripe.js embedded checkout. For `ui_mode: custom`, use the client secret with [initCheckout](https://docs.stripe.com/js/custom_checkout/init) on your front end.
  String? clientSecret;

  ///  Information about the customer collected within the Checkout Session.
  PaymentPagesCheckoutSessionCollectedInformation? collectedInformation;

  ///  Results of `consent_collection` for this session.
  PaymentPagesCheckoutSessionConsent? consent;

  ///  When set, provides configuration for the Checkout Session to gather active consent from customers.
  PaymentPagesCheckoutSessionConsentCollection? consentCollection;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions created before 2025-03-31.
  PaymentPagesCheckoutSessionCurrencyConversion? currencyConversion;

  ///  The ID of the customer for this Session.For Checkout Sessions in `subscription` mode or Checkout Sessions with `customer_creation` set as `always` in `payment` mode, Checkoutwill create a new customer object based on information providedduring the payment flow unless an existing customer was provided whenthe Session was created.
  SessionCustomer? customer;

  ///  The ID of the account for this Session.
  String? customerAccount;

  ///  Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
  SessionCustomerCreation? customerCreation;

  ///  The customer details including the customer's tax exempt status and the customer's tax IDs. Customer's address details are not present on Sessions in `setup` mode.
  PaymentPagesCheckoutSessionCustomerDetails? customerDetails;

  ///  If provided, this value will be used when the Customer object is created.If not provided, customers will be asked to enter their email address.Use this parameter to prefill customer data if you already have an emailon file. To access information about the customer once the payment flow iscomplete, use the `customer` attribute.
  String? customerEmail;

  ///  Collect additional information from your customer using custom fields. Up to 3 fields are supported.
  Iterable<PaymentPagesCheckoutSessionCustomFields>? customFields;

  ///  The custom_text property
  PaymentPagesCheckoutSessionCustomText? customText;

  ///  List of coupons and promotion codes attached to the Checkout Session.
  Iterable<PaymentPagesCheckoutSessionDiscount>? discounts;

  ///  A list of the types of payment methods (e.g., `card`) that should be excluded from this Checkout Session. This should only be used when payment methods for this Checkout Session are managed through the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
  Iterable<String>? excludedPaymentMethodTypes;

  ///  The timestamp at which the Checkout Session will expire.
  int? expiresAt;

  ///  Unique identifier for the object.
  String? id;

  ///  ID of the invoice created by the Checkout Session, if it exists.
  SessionInvoice? invoice;

  ///  Details on the state of invoice creation for the Checkout Session.
  PaymentPagesCheckoutSessionInvoiceCreation? invoiceCreation;

  ///  The line items purchased by the customer.
  SessionLineItems? lineItems;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
  SessionLocale? locale;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SessionMetadata? metadata;

  ///  The mode of the Checkout Session.
  SessionMode? mode;

  ///  The name_collection property
  PaymentPagesCheckoutSessionNameCollection? nameCollection;

  ///  String representing the object's type. Objects of the same type share the same value.
  SessionObject? object;

  ///  The optional items presented to the customer at checkout.
  Iterable<PaymentPagesCheckoutSessionOptionalItem>? optionalItems;

  ///  Where the user is coming from. This informs the optimizations that are applied to the session.
  SessionOriginContext? originContext;

  ///  The ID of the PaymentIntent for Checkout Sessions in `payment` mode. You can't confirm or cancel the PaymentIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://docs.stripe.com/api/checkout/sessions/expire) instead.
  SessionPaymentIntent? paymentIntent;

  ///  The ID of the Payment Link that created this Session.
  SessionPaymentLink? paymentLink;

  ///  Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
  SessionPaymentMethodCollection? paymentMethodCollection;

  ///  Information about the payment method configuration used for this Checkout session if using dynamic payment methods.
  PaymentMethodConfigBizPaymentMethodConfigurationDetails?
      paymentMethodConfigurationDetails;

  ///  Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
  CheckoutSessionPaymentMethodOptions? paymentMethodOptions;

  ///  A list of the types of payment methods (e.g. card) this CheckoutSession is allowed to accept.
  Iterable<String>? paymentMethodTypes;

  ///  The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.You can use this value to decide when to fulfill your customer's order.
  SessionPaymentStatus? paymentStatus;

  ///  This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object.For specific permissions, please refer to their dedicated subsections, such as `permissions.update_shipping_details`.
  PaymentPagesCheckoutSessionPermissions? permissions;

  ///  The phone_number_collection property
  PaymentPagesCheckoutSessionPhoneNumberCollection? phoneNumberCollection;

  ///  The presentment_details property
  PaymentFlowsPaymentIntentPresentmentDetails? presentmentDetails;

  ///  The ID of the original expired Checkout Session that triggered the recovery flow.
  String? recoveredFrom;

  ///  This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://docs.stripe.com/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
  SessionRedirectOnCompletion? redirectOnCompletion;

  ///  Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
  String? returnUrl;

  ///  Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
  PaymentPagesCheckoutSessionSavedPaymentMethodOptions?
      savedPaymentMethodOptions;

  ///  The ID of the SetupIntent for Checkout Sessions in `setup` mode. You can't confirm or cancel the SetupIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://docs.stripe.com/api/checkout/sessions/expire) instead.
  SessionSetupIntent? setupIntent;

  ///  When set, provides configuration for Checkout to collect a shipping address from a customer.
  PaymentPagesCheckoutSessionShippingAddressCollection?
      shippingAddressCollection;

  ///  The details of the customer cost of shipping, including the customer chosen ShippingRate.
  PaymentPagesCheckoutSessionShippingCost? shippingCost;

  ///  The shipping rate options applied to this Session.
  Iterable<PaymentPagesCheckoutSessionShippingOption>? shippingOptions;

  ///  The status of the Checkout Session, one of `open`, `complete`, or `expired`.
  SessionStatus? status;

  ///  Describes the type of transaction being performed by Checkout in order to customizerelevant text on the page, such as the submit button. `submit_type` can only bespecified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
  SessionSubmitType? submitType;

  ///  The ID of the [Subscription](https://docs.stripe.com/api/subscriptions) for Checkout Sessions in `subscription` mode.
  SessionSubscription? subscription;

  ///  The URL the customer will be directed to after the payment orsubscription creation is successful.
  String? successUrl;

  ///  The tax_id_collection property
  PaymentPagesCheckoutSessionTaxIdCollection? taxIdCollection;

  ///  Tax and discount details for the computed total amount.
  PaymentPagesCheckoutSessionTotalDetails? totalDetails;

  ///  The UI mode of the Session. Defaults to `hosted`.
  SessionUiMode? uiMode;

  ///  The URL to the Checkout Session. Applies to Checkout Sessions with `ui_mode: hosted`. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://docs.stripe.com/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`This value is only present when the session is active.
  String? url;

  ///  Wallet-specific configuration for this Checkout Session.
  CheckoutSessionWalletOptions? walletOptions;

  /// Instantiates a new [Session] and sets the default values.
  Session() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Session createFromDiscriminatorValue(ParseNode parseNode) {
    return Session();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adaptive_pricing'] = (node) => adaptivePricing =
        node.getObjectValue<PaymentPagesCheckoutSessionAdaptivePricing>(
            PaymentPagesCheckoutSessionAdaptivePricing
                .createFromDiscriminatorValue);
    deserializerMap['after_expiration'] = (node) => afterExpiration =
        node.getObjectValue<PaymentPagesCheckoutSessionAfterExpiration>(
            PaymentPagesCheckoutSessionAfterExpiration
                .createFromDiscriminatorValue);
    deserializerMap['allow_promotion_codes'] =
        (node) => allowPromotionCodes = node.getBoolValue();
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<PaymentPagesCheckoutSessionAutomaticTax>(
            PaymentPagesCheckoutSessionAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['billing_address_collection'] = (node) =>
        billingAddressCollection =
            node.getEnumValue<SessionBillingAddressCollection>((stringValue) =>
                SessionBillingAddressCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['branding_settings'] = (node) => brandingSettings =
        node.getObjectValue<PaymentPagesCheckoutSessionBrandingSettings>(
            PaymentPagesCheckoutSessionBrandingSettings
                .createFromDiscriminatorValue);
    deserializerMap['cancel_url'] = (node) => cancelUrl = node.getStringValue();
    deserializerMap['client_reference_id'] =
        (node) => clientReferenceId = node.getStringValue();
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['collected_information'] = (node) => collectedInformation =
        node.getObjectValue<PaymentPagesCheckoutSessionCollectedInformation>(
            PaymentPagesCheckoutSessionCollectedInformation
                .createFromDiscriminatorValue);
    deserializerMap['consent'] = (node) => consent =
        node.getObjectValue<PaymentPagesCheckoutSessionConsent>(
            PaymentPagesCheckoutSessionConsent.createFromDiscriminatorValue);
    deserializerMap['consent_collection'] = (node) => consentCollection =
        node.getObjectValue<PaymentPagesCheckoutSessionConsentCollection>(
            PaymentPagesCheckoutSessionConsentCollection
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_conversion'] = (node) => currencyConversion =
        node.getObjectValue<PaymentPagesCheckoutSessionCurrencyConversion>(
            PaymentPagesCheckoutSessionCurrencyConversion
                .createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<SessionCustomer>(
            SessionCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['customer_creation'] = (node) => customerCreation =
        node.getEnumValue<SessionCustomerCreation>((stringValue) =>
            SessionCustomerCreation.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomerDetails>(
            PaymentPagesCheckoutSessionCustomerDetails
                .createFromDiscriminatorValue);
    deserializerMap['customer_email'] =
        (node) => customerEmail = node.getStringValue();
    deserializerMap['custom_fields'] = (node) => customFields = node
        .getCollectionOfObjectValues<PaymentPagesCheckoutSessionCustomFields>(
            PaymentPagesCheckoutSessionCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['custom_text'] = (node) => customText =
        node.getObjectValue<PaymentPagesCheckoutSessionCustomText>(
            PaymentPagesCheckoutSessionCustomText.createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<PaymentPagesCheckoutSessionDiscount>(
            PaymentPagesCheckoutSessionDiscount.createFromDiscriminatorValue);
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<SessionInvoice>(
            SessionInvoice.createFromDiscriminatorValue);
    deserializerMap['invoice_creation'] = (node) => invoiceCreation =
        node.getObjectValue<PaymentPagesCheckoutSessionInvoiceCreation>(
            PaymentPagesCheckoutSessionInvoiceCreation
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<SessionLineItems>(
            SessionLineItems.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['locale'] = (node) => locale =
        node.getEnumValue<SessionLocale>((stringValue) => SessionLocale.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SessionMetadata>(
            SessionMetadata.createFromDiscriminatorValue);
    deserializerMap['mode'] = (node) => mode = node.getEnumValue<SessionMode>(
        (stringValue) => SessionMode.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['name_collection'] = (node) => nameCollection =
        node.getObjectValue<PaymentPagesCheckoutSessionNameCollection>(
            PaymentPagesCheckoutSessionNameCollection
                .createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SessionObject>((stringValue) => SessionObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['optional_items'] = (node) => optionalItems = node
        .getCollectionOfObjectValues<PaymentPagesCheckoutSessionOptionalItem>(
            PaymentPagesCheckoutSessionOptionalItem
                .createFromDiscriminatorValue);
    deserializerMap['origin_context'] = (node) => originContext =
        node.getEnumValue<SessionOriginContext>((stringValue) =>
            SessionOriginContext.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<SessionPaymentIntent>(
            SessionPaymentIntent.createFromDiscriminatorValue);
    deserializerMap['payment_link'] = (node) => paymentLink =
        node.getObjectValue<SessionPaymentLink>(
            SessionPaymentLink.createFromDiscriminatorValue);
    deserializerMap['payment_method_collection'] = (node) =>
        paymentMethodCollection =
            node.getEnumValue<SessionPaymentMethodCollection>((stringValue) =>
                SessionPaymentMethodCollection.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['payment_method_configuration_details'] = (node) =>
        paymentMethodConfigurationDetails = node.getObjectValue<
                PaymentMethodConfigBizPaymentMethodConfigurationDetails>(
            PaymentMethodConfigBizPaymentMethodConfigurationDetails
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<CheckoutSessionPaymentMethodOptions>(
            CheckoutSessionPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) =>
        paymentMethodTypes = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['payment_status'] = (node) => paymentStatus =
        node.getEnumValue<SessionPaymentStatus>((stringValue) =>
            SessionPaymentStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['permissions'] = (node) => permissions =
        node.getObjectValue<PaymentPagesCheckoutSessionPermissions>(
            PaymentPagesCheckoutSessionPermissions
                .createFromDiscriminatorValue);
    deserializerMap['phone_number_collection'] = (node) =>
        phoneNumberCollection = node
            .getObjectValue<PaymentPagesCheckoutSessionPhoneNumberCollection>(
                PaymentPagesCheckoutSessionPhoneNumberCollection
                    .createFromDiscriminatorValue);
    deserializerMap['presentment_details'] = (node) => presentmentDetails =
        node.getObjectValue<PaymentFlowsPaymentIntentPresentmentDetails>(
            PaymentFlowsPaymentIntentPresentmentDetails
                .createFromDiscriminatorValue);
    deserializerMap['recovered_from'] =
        (node) => recoveredFrom = node.getStringValue();
    deserializerMap['redirect_on_completion'] = (node) => redirectOnCompletion =
        node.getEnumValue<SessionRedirectOnCompletion>((stringValue) =>
            SessionRedirectOnCompletion.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['saved_payment_method_options'] = (node) =>
        savedPaymentMethodOptions = node.getObjectValue<
                PaymentPagesCheckoutSessionSavedPaymentMethodOptions>(
            PaymentPagesCheckoutSessionSavedPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['setup_intent'] = (node) => setupIntent =
        node.getObjectValue<SessionSetupIntent>(
            SessionSetupIntent.createFromDiscriminatorValue);
    deserializerMap['shipping_address_collection'] = (node) =>
        shippingAddressCollection = node.getObjectValue<
                PaymentPagesCheckoutSessionShippingAddressCollection>(
            PaymentPagesCheckoutSessionShippingAddressCollection
                .createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<PaymentPagesCheckoutSessionShippingCost>(
            PaymentPagesCheckoutSessionShippingCost
                .createFromDiscriminatorValue);
    deserializerMap['shipping_options'] = (node) => shippingOptions = node
        .getCollectionOfObjectValues<PaymentPagesCheckoutSessionShippingOption>(
            PaymentPagesCheckoutSessionShippingOption
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<SessionStatus>((stringValue) => SessionStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['submit_type'] = (node) => submitType =
        node.getEnumValue<SessionSubmitType>((stringValue) => SessionSubmitType
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['subscription'] = (node) => subscription =
        node.getObjectValue<SessionSubscription>(
            SessionSubscription.createFromDiscriminatorValue);
    deserializerMap['success_url'] =
        (node) => successUrl = node.getStringValue();
    deserializerMap['tax_id_collection'] = (node) => taxIdCollection =
        node.getObjectValue<PaymentPagesCheckoutSessionTaxIdCollection>(
            PaymentPagesCheckoutSessionTaxIdCollection
                .createFromDiscriminatorValue);
    deserializerMap['total_details'] = (node) => totalDetails =
        node.getObjectValue<PaymentPagesCheckoutSessionTotalDetails>(
            PaymentPagesCheckoutSessionTotalDetails
                .createFromDiscriminatorValue);
    deserializerMap['ui_mode'] = (node) => uiMode =
        node.getEnumValue<SessionUiMode>((stringValue) => SessionUiMode.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    deserializerMap['wallet_options'] = (node) => walletOptions =
        node.getObjectValue<CheckoutSessionWalletOptions>(
            CheckoutSessionWalletOptions.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentPagesCheckoutSessionAdaptivePricing>(
        'adaptive_pricing', adaptivePricing);
    writer.writeObjectValue<PaymentPagesCheckoutSessionAfterExpiration>(
        'after_expiration', afterExpiration);
    writer.writeBoolValue('allow_promotion_codes', value: allowPromotionCodes);
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeObjectValue<PaymentPagesCheckoutSessionAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<SessionBillingAddressCollection>(
        'billing_address_collection',
        billingAddressCollection,
        (e) => e?.value);
    writer.writeObjectValue<PaymentPagesCheckoutSessionBrandingSettings>(
        'branding_settings', brandingSettings);
    writer.writeStringValue('cancel_url', cancelUrl);
    writer.writeStringValue('client_reference_id', clientReferenceId);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCollectedInformation>(
        'collected_information', collectedInformation);
    writer.writeObjectValue<PaymentPagesCheckoutSessionConsent>(
        'consent', consent);
    writer.writeObjectValue<PaymentPagesCheckoutSessionConsentCollection>(
        'consent_collection', consentCollection);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCurrencyConversion>(
        'currency_conversion', currencyConversion);
    writer.writeObjectValue<SessionCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeEnumValue<SessionCustomerCreation>(
        'customer_creation', customerCreation, (e) => e?.value);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeStringValue('customer_email', customerEmail);
    writer
        .writeCollectionOfObjectValues<PaymentPagesCheckoutSessionCustomFields>(
            'custom_fields', customFields);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCustomText>(
        'custom_text', customText);
    writer.writeCollectionOfObjectValues<PaymentPagesCheckoutSessionDiscount>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'excluded_payment_method_types', excludedPaymentMethodTypes);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<SessionInvoice>('invoice', invoice);
    writer.writeObjectValue<PaymentPagesCheckoutSessionInvoiceCreation>(
        'invoice_creation', invoiceCreation);
    writer.writeObjectValue<SessionLineItems>('line_items', lineItems);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SessionLocale>('locale', locale, (e) => e?.value);
    writer.writeObjectValue<SessionMetadata>('metadata', metadata);
    writer.writeEnumValue<SessionMode>('mode', mode, (e) => e?.value);
    writer.writeObjectValue<PaymentPagesCheckoutSessionNameCollection>(
        'name_collection', nameCollection);
    writer.writeEnumValue<SessionObject>('object', object, (e) => e?.value);
    writer
        .writeCollectionOfObjectValues<PaymentPagesCheckoutSessionOptionalItem>(
            'optional_items', optionalItems);
    writer.writeEnumValue<SessionOriginContext>(
        'origin_context', originContext, (e) => e?.value);
    writer.writeObjectValue<SessionPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeObjectValue<SessionPaymentLink>('payment_link', paymentLink);
    writer.writeEnumValue<SessionPaymentMethodCollection>(
        'payment_method_collection', paymentMethodCollection, (e) => e?.value);
    writer.writeObjectValue<
            PaymentMethodConfigBizPaymentMethodConfigurationDetails>(
        'payment_method_configuration_details',
        paymentMethodConfigurationDetails);
    writer.writeObjectValue<CheckoutSessionPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
    writer.writeEnumValue<SessionPaymentStatus>(
        'payment_status', paymentStatus, (e) => e?.value);
    writer.writeObjectValue<PaymentPagesCheckoutSessionPermissions>(
        'permissions', permissions);
    writer.writeObjectValue<PaymentPagesCheckoutSessionPhoneNumberCollection>(
        'phone_number_collection', phoneNumberCollection);
    writer.writeObjectValue<PaymentFlowsPaymentIntentPresentmentDetails>(
        'presentment_details', presentmentDetails);
    writer.writeStringValue('recovered_from', recoveredFrom);
    writer.writeEnumValue<SessionRedirectOnCompletion>(
        'redirect_on_completion', redirectOnCompletion, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer
        .writeObjectValue<PaymentPagesCheckoutSessionSavedPaymentMethodOptions>(
            'saved_payment_method_options', savedPaymentMethodOptions);
    writer.writeObjectValue<SessionSetupIntent>('setup_intent', setupIntent);
    writer
        .writeObjectValue<PaymentPagesCheckoutSessionShippingAddressCollection>(
            'shipping_address_collection', shippingAddressCollection);
    writer.writeObjectValue<PaymentPagesCheckoutSessionShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeCollectionOfObjectValues<
            PaymentPagesCheckoutSessionShippingOption>(
        'shipping_options', shippingOptions);
    writer.writeEnumValue<SessionStatus>('status', status, (e) => e?.value);
    writer.writeEnumValue<SessionSubmitType>(
        'submit_type', submitType, (e) => e?.value);
    writer.writeObjectValue<SessionSubscription>('subscription', subscription);
    writer.writeStringValue('success_url', successUrl);
    writer.writeObjectValue<PaymentPagesCheckoutSessionTaxIdCollection>(
        'tax_id_collection', taxIdCollection);
    writer.writeObjectValue<PaymentPagesCheckoutSessionTotalDetails>(
        'total_details', totalDetails);
    writer.writeEnumValue<SessionUiMode>('ui_mode', uiMode, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeObjectValue<CheckoutSessionWalletOptions>(
        'wallet_options', walletOptions);
    writer.writeAdditionalData(additionalData);
  }
}
