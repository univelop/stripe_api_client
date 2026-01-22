// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_automatic_payment_methods.dart';
import './setup_intents_post_request_body_excluded_payment_method_types.dart';
import './setup_intents_post_request_body_flow_directions.dart';
import './setup_intents_post_request_body_mandate_data.dart';
import './setup_intents_post_request_body_metadata.dart';
import './setup_intents_post_request_body_payment_method_data.dart';
import './setup_intents_post_request_body_payment_method_options.dart';
import './setup_intents_post_request_body_single_use.dart';
import './setup_intents_post_request_body_usage.dart';

/// auto generated
class SetupIntentsPostRequestBody implements Parsable {
  ///  If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
  bool? attachToSelf;

  ///  When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
  SetupIntentsPostRequestBodyAutomaticPaymentMethods? automaticPaymentMethods;

  ///  Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If a card is the attached payment method, you can provide a `return_url` in case further authentication is necessary.
  bool? confirm;

  ///  ID of the ConfirmationToken used to confirm this SetupIntent.If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
  String? confirmationToken;

  ///  ID of the Customer this SetupIntent belongs to, if one exists.If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
  String? customer;

  ///  ID of the Account this SetupIntent belongs to, if one exists.If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
  String? customerAccount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The list of payment method types to exclude from use with this SetupIntent.
  Iterable<SetupIntentsPostRequestBodyExcludedPaymentMethodTypes>?
      excludedPaymentMethodTypes;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Indicates the directions of money movement for which this payment method is intended to be used.Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
  Iterable<SetupIntentsPostRequestBodyFlowDirections>? flowDirections;

  ///  This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/setup_intents/create#create_setup_intent-confirm).
  SetupIntentsPostRequestBodyMandateData? mandateData;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  SetupIntentsPostRequestBodyMetadata? metadata;

  ///  The Stripe account ID created for this SetupIntent.
  String? onBehalfOf;

  ///  ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
  String? paymentMethod;

  ///  The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this SetupIntent.
  String? paymentMethodConfiguration;

  ///  When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-payment_method)value in the SetupIntent.
  SetupIntentsPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment method-specific configuration for this SetupIntent.
  SetupIntentsPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (for example, card) that this SetupIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  Iterable<String>? paymentMethodTypes;

  ///  The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. To redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/setup_intents/create#create_setup_intent-confirm).
  String? returnUrl;

  ///  If you populate this hash, this SetupIntent generates a `single_use` mandate after successful completion.Single-use mandates are only valid for the following payment methods: `acss_debit`, `alipay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `boleto`, `ideal`, `link`, `sepa_debit`, and `us_bank_account`.
  SetupIntentsPostRequestBodySingleUse? singleUse;

  ///  Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
  SetupIntentsPostRequestBodyUsage? usage;

  ///  Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
  bool? useStripeSdk;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['attach_to_self'] =
        (node) => attachToSelf = node.getBoolValue();
    deserializerMap['automatic_payment_methods'] = (node) =>
        automaticPaymentMethods = node
            .getObjectValue<SetupIntentsPostRequestBodyAutomaticPaymentMethods>(
                SetupIntentsPostRequestBodyAutomaticPaymentMethods
                    .createFromDiscriminatorValue);
    deserializerMap['confirm'] = (node) => confirm = node.getBoolValue();
    deserializerMap['confirmation_token'] =
        (node) => confirmationToken = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['excluded_payment_method_types'] = (node) =>
        excludedPaymentMethodTypes = node.getCollectionOfEnumValues<
                SetupIntentsPostRequestBodyExcludedPaymentMethodTypes>(
            (stringValue) =>
                SetupIntentsPostRequestBodyExcludedPaymentMethodTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['flow_directions'] = (node) => flowDirections = node
        .getCollectionOfEnumValues<SetupIntentsPostRequestBodyFlowDirections>(
            (stringValue) => SetupIntentsPostRequestBodyFlowDirections.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['mandate_data'] = (node) => mandateData =
        node.getObjectValue<SetupIntentsPostRequestBodyMandateData>(
            SetupIntentsPostRequestBodyMandateData
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SetupIntentsPostRequestBodyMetadata>(
            SetupIntentsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_configuration'] =
        (node) => paymentMethodConfiguration = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodData>(
            SetupIntentsPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptions>(
            SetupIntentsPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) =>
        paymentMethodTypes = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['single_use'] = (node) => singleUse =
        node.getObjectValue<SetupIntentsPostRequestBodySingleUse>(
            SetupIntentsPostRequestBodySingleUse.createFromDiscriminatorValue);
    deserializerMap['usage'] = (node) => usage =
        node.getEnumValue<SetupIntentsPostRequestBodyUsage>((stringValue) =>
            SetupIntentsPostRequestBodyUsage.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['use_stripe_sdk'] =
        (node) => useStripeSdk = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('attach_to_self', value: attachToSelf);
    writer.writeObjectValue<SetupIntentsPostRequestBodyAutomaticPaymentMethods>(
        'automatic_payment_methods', automaticPaymentMethods);
    writer.writeBoolValue('confirm', value: confirm);
    writer.writeStringValue('confirmation_token', confirmationToken);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfEnumValues<
            SetupIntentsPostRequestBodyExcludedPaymentMethodTypes>(
        'excluded_payment_method_types',
        excludedPaymentMethodTypes,
        (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer
        .writeCollectionOfEnumValues<SetupIntentsPostRequestBodyFlowDirections>(
            'flow_directions', flowDirections, (e) => e?.value);
    writer.writeObjectValue<SetupIntentsPostRequestBodyMandateData>(
        'mandate_data', mandateData);
    writer.writeObjectValue<SetupIntentsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeObjectValue<SetupIntentsPostRequestBodySingleUse>(
        'single_use', singleUse);
    writer.writeEnumValue<SetupIntentsPostRequestBodyUsage>(
        'usage', usage, (e) => e?.value);
    writer.writeBoolValue('use_stripe_sdk', value: useStripeSdk);
  }
}
