// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_errors.dart';
import './payment_flows_automatic_payment_methods_setup_intent.dart';
import './payment_method_config_biz_payment_method_configuration_details.dart';
import './setup_intent_application.dart';
import './setup_intent_cancellation_reason.dart';
import './setup_intent_customer.dart';
import './setup_intent_excluded_payment_method_types.dart';
import './setup_intent_flow_directions.dart';
import './setup_intent_latest_attempt.dart';
import './setup_intent_mandate.dart';
import './setup_intent_metadata.dart';
import './setup_intent_next_action.dart';
import './setup_intent_object.dart';
import './setup_intent_on_behalf_of.dart';
import './setup_intent_payment_method.dart';
import './setup_intent_payment_method_options.dart';
import './setup_intent_single_use_mandate.dart';
import './setup_intent_status.dart';

/// auto generated
/// A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.Later, you can use [PaymentIntents](https://api.stripe.com#payment_intents) to drive the payment flow.Create a SetupIntent when you're ready to collect your customer's payment credentials.Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guidesyou through the setup process.Successful SetupIntents result in payment credentials that are optimized for future payments.For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through[Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collectionto streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents).If you use the SetupIntent with a [Customer](https://api.stripe.com#setup_intent_object-customer),it automatically attaches the resulting payment method to that Customer after successful setup.We recommend using SetupIntents or [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) onPaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
class SetupIntent implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the Connect application that created the SetupIntent.
  SetupIntentApplication? application;

  ///  If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
  bool? attachToSelf;

  ///  Settings for dynamic payment methods compatible with this Setup Intent
  PaymentFlowsAutomaticPaymentMethodsSetupIntent? automaticPaymentMethods;

  ///  Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
  SetupIntentCancellationReason? cancellationReason;

  ///  The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
  String? clientSecret;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  ID of the Customer this SetupIntent belongs to, if one exists.If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
  SetupIntentCustomer? customer;

  ///  ID of the Account this SetupIntent belongs to, if one exists.If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
  String? customerAccount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Payment method types that are excluded from this SetupIntent.
  Iterable<SetupIntentExcludedPaymentMethodTypes>? excludedPaymentMethodTypes;

  ///  Indicates the directions of money movement for which this payment method is intended to be used.Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
  Iterable<SetupIntentFlowDirections>? flowDirections;

  ///  Unique identifier for the object.
  String? id;

  ///  The error encountered in the previous SetupIntent confirmation.
  ApiErrors? lastSetupError;

  ///  The most recent SetupAttempt for this SetupIntent.
  SetupIntentLatestAttempt? latestAttempt;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  ID of the multi use Mandate generated by the SetupIntent.
  SetupIntentMandate? mandate;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SetupIntentMetadata? metadata;

  ///  If present, this property tells you what actions you need to take in order for your customer to continue payment setup.
  SetupIntentNextAction? nextAction;

  ///  String representing the object's type. Objects of the same type share the same value.
  SetupIntentObject? object;

  ///  The account (if any) for which the setup is intended.
  SetupIntentOnBehalfOf? onBehalfOf;

  ///  ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
  SetupIntentPaymentMethod? paymentMethod;

  ///  Information about the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) used for this Setup Intent.
  PaymentMethodConfigBizPaymentMethodConfigurationDetails?
      paymentMethodConfigurationDetails;

  ///  Payment method-specific configuration for this SetupIntent.
  SetupIntentPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (e.g. card) that this SetupIntent is allowed to set up. A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  Iterable<String>? paymentMethodTypes;

  ///  ID of the single_use Mandate generated by the SetupIntent.
  SetupIntentSingleUseMandate? singleUseMandate;

  ///  [Status](https://docs.stripe.com/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
  SetupIntentStatus? status;

  ///  Indicates how the payment method is intended to be used in the future.Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
  String? usage;

  /// Instantiates a new [SetupIntent] and sets the default values.
  SetupIntent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntent createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<SetupIntentApplication>(
            SetupIntentApplication.createFromDiscriminatorValue);
    deserializerMap['attach_to_self'] =
        (node) => attachToSelf = node.getBoolValue();
    deserializerMap['automatic_payment_methods'] = (node) =>
        automaticPaymentMethods =
            node.getObjectValue<PaymentFlowsAutomaticPaymentMethodsSetupIntent>(
                PaymentFlowsAutomaticPaymentMethodsSetupIntent
                    .createFromDiscriminatorValue);
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getEnumValue<SetupIntentCancellationReason>((stringValue) =>
            SetupIntentCancellationReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<SetupIntentCustomer>(
            SetupIntentCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes = node
            .getCollectionOfEnumValues<SetupIntentExcludedPaymentMethodTypes>(
                (stringValue) => SetupIntentExcludedPaymentMethodTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['flow_directions'] = (node) => flowDirections =
        node.getCollectionOfEnumValues<SetupIntentFlowDirections>(
            (stringValue) => SetupIntentFlowDirections.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['last_setup_error'] = (node) => lastSetupError =
        node.getObjectValue<ApiErrors>(ApiErrors.createFromDiscriminatorValue);
    deserializerMap['latest_attempt'] = (node) => latestAttempt =
        node.getObjectValue<SetupIntentLatestAttempt>(
            SetupIntentLatestAttempt.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['mandate'] = (node) => mandate =
        node.getObjectValue<SetupIntentMandate>(
            SetupIntentMandate.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SetupIntentMetadata>(
            SetupIntentMetadata.createFromDiscriminatorValue);
    deserializerMap['next_action'] = (node) => nextAction =
        node.getObjectValue<SetupIntentNextAction>(
            SetupIntentNextAction.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SetupIntentObject>((stringValue) => SetupIntentObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<SetupIntentOnBehalfOf>(
            SetupIntentOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['payment_method'] = (node) => paymentMethod =
        node.getObjectValue<SetupIntentPaymentMethod>(
            SetupIntentPaymentMethod.createFromDiscriminatorValue);
    deserializerMap['payment_method_configuration_details'] = (node) =>
        paymentMethodConfigurationDetails = node.getObjectValue<
                PaymentMethodConfigBizPaymentMethodConfigurationDetails>(
            PaymentMethodConfigBizPaymentMethodConfigurationDetails
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<SetupIntentPaymentMethodOptions>(
            SetupIntentPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) =>
        paymentMethodTypes = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['single_use_mandate'] = (node) => singleUseMandate =
        node.getObjectValue<SetupIntentSingleUseMandate>(
            SetupIntentSingleUseMandate.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<SetupIntentStatus>((stringValue) => SetupIntentStatus
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['usage'] = (node) => usage = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetupIntentApplication>('application', application);
    writer.writeBoolValue('attach_to_self', value: attachToSelf);
    writer.writeObjectValue<PaymentFlowsAutomaticPaymentMethodsSetupIntent>(
        'automatic_payment_methods', automaticPaymentMethods);
    writer.writeEnumValue<SetupIntentCancellationReason>(
        'cancellation_reason', cancellationReason, (e) => e?.value);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<SetupIntentCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfEnumValues<SetupIntentExcludedPaymentMethodTypes>(
        'excluded_payment_method_types',
        excludedPaymentMethodTypes,
        (e) => e?.value);
    writer.writeCollectionOfEnumValues<SetupIntentFlowDirections>(
        'flow_directions', flowDirections, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<ApiErrors>('last_setup_error', lastSetupError);
    writer.writeObjectValue<SetupIntentLatestAttempt>(
        'latest_attempt', latestAttempt);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<SetupIntentMandate>('mandate', mandate);
    writer.writeObjectValue<SetupIntentMetadata>('metadata', metadata);
    writer.writeObjectValue<SetupIntentNextAction>('next_action', nextAction);
    writer.writeEnumValue<SetupIntentObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<SetupIntentOnBehalfOf>('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<SetupIntentPaymentMethod>(
        'payment_method', paymentMethod);
    writer.writeObjectValue<
            PaymentMethodConfigBizPaymentMethodConfigurationDetails>(
        'payment_method_configuration_details',
        paymentMethodConfigurationDetails);
    writer.writeObjectValue<SetupIntentPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
    writer.writeObjectValue<SetupIntentSingleUseMandate>(
        'single_use_mandate', singleUseMandate);
    writer.writeEnumValue<SetupIntentStatus>('status', status, (e) => e?.value);
    writer.writeStringValue('usage', usage);
    writer.writeAdditionalData(additionalData);
  }
}
