// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_excluded_payment_method_types.dart';
import './with_intent_post_request_body_flow_directions.dart';
import './with_intent_post_request_body_payment_method_data.dart';
import './with_intent_post_request_body_payment_method_options.dart';

/// auto generated
class WithIntentPostRequestBody implements Parsable {
  ///  If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
  bool? attachToSelf;

  ///  ID of the Customer this SetupIntent belongs to, if one exists.If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
  String? customer;

  ///  ID of the Account this SetupIntent belongs to, if one exists.If present, the SetupIntent's payment method will be attached to the Account on successful setup. Payment methods attached to other Accounts cannot be used with this SetupIntent.
  String? customerAccount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The list of payment method types to exclude from use with this SetupIntent.
  WithIntentPostRequestBodyExcludedPaymentMethodTypes?
      excludedPaymentMethodTypes;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Indicates the directions of money movement for which this payment method is intended to be used.Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
  Iterable<WithIntentPostRequestBodyFlowDirections>? flowDirections;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
  String? paymentMethod;

  ///  The ID of the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) to use with this SetupIntent.
  String? paymentMethodConfiguration;

  ///  When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-payment_method)value in the SetupIntent.
  WithIntentPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment method-specific configuration for this SetupIntent.
  WithIntentPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods). A list of valid payment method types can be found [here](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type).
  Iterable<String>? paymentMethodTypes;

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
    deserializerMap['attach_to_self'] =
        (node) => attachToSelf = node.getBoolValue();
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
    deserializerMap['flow_directions'] = (node) => flowDirections =
        node.getCollectionOfEnumValues<WithIntentPostRequestBodyFlowDirections>(
            (stringValue) => WithIntentPostRequestBodyFlowDirections.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
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
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('attach_to_self', value: attachToSelf);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer
        .writeObjectValue<WithIntentPostRequestBodyExcludedPaymentMethodTypes>(
            'excluded_payment_method_types', excludedPaymentMethodTypes);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfEnumValues<WithIntentPostRequestBodyFlowDirections>(
        'flow_directions', flowDirections, (e) => e?.value);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'payment_method_types', paymentMethodTypes);
  }
}
