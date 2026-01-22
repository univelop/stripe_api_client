// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_errors.dart';
import './setup_attempt_application.dart';
import './setup_attempt_customer.dart';
import './setup_attempt_flow_directions.dart';
import './setup_attempt_object.dart';
import './setup_attempt_on_behalf_of.dart';
import './setup_attempt_payment_method.dart';
import './setup_attempt_payment_method_details.dart';
import './setup_attempt_setup_intent.dart';

/// auto generated
/// A SetupAttempt describes one attempted confirmation of a SetupIntent,whether that confirmation is successful or unsuccessful. You can useSetupAttempts to inspect details of a specific attempt at setting up apayment method using a SetupIntent.
class SetupAttempt implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The value of [application](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-application) on the SetupIntent at the time of this confirmation.
  SetupAttemptApplication? application;

  ///  If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
  bool? attachToSelf;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The value of [customer](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-customer) on the SetupIntent at the time of this confirmation.
  SetupAttemptCustomer? customer;

  ///  The value of [customer_account](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-customer_account) on the SetupIntent at the time of this confirmation.
  String? customerAccount;

  ///  Indicates the directions of money movement for which this payment method is intended to be used.Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
  Iterable<SetupAttemptFlowDirections>? flowDirections;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  SetupAttemptObject? object;

  ///  The value of [on_behalf_of](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-on_behalf_of) on the SetupIntent at the time of this confirmation.
  SetupAttemptOnBehalfOf? onBehalfOf;

  ///  ID of the payment method used with this SetupAttempt.
  SetupAttemptPaymentMethod? paymentMethod;

  ///  The payment_method_details property
  SetupAttemptPaymentMethodDetails? paymentMethodDetails;

  ///  The error encountered during this attempt to confirm the SetupIntent, if any.
  ApiErrors? setupError;

  ///  ID of the SetupIntent that this attempt belongs to.
  SetupAttemptSetupIntent? setupIntent;

  ///  Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`.
  String? status;

  ///  The value of [usage](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`.
  String? usage;

  /// Instantiates a new [SetupAttempt] and sets the default values.
  SetupAttempt() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupAttempt createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupAttempt();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<SetupAttemptApplication>(
            SetupAttemptApplication.createFromDiscriminatorValue);
    deserializerMap['attach_to_self'] =
        (node) => attachToSelf = node.getBoolValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<SetupAttemptCustomer>(
            SetupAttemptCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['flow_directions'] = (node) => flowDirections =
        node.getCollectionOfEnumValues<SetupAttemptFlowDirections>(
            (stringValue) => SetupAttemptFlowDirections.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SetupAttemptObject>((stringValue) =>
            SetupAttemptObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<SetupAttemptOnBehalfOf>(
            SetupAttemptOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['payment_method'] = (node) => paymentMethod =
        node.getObjectValue<SetupAttemptPaymentMethod>(
            SetupAttemptPaymentMethod.createFromDiscriminatorValue);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<SetupAttemptPaymentMethodDetails>(
            SetupAttemptPaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['setup_error'] = (node) => setupError =
        node.getObjectValue<ApiErrors>(ApiErrors.createFromDiscriminatorValue);
    deserializerMap['setup_intent'] = (node) => setupIntent =
        node.getObjectValue<SetupAttemptSetupIntent>(
            SetupAttemptSetupIntent.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['usage'] = (node) => usage = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetupAttemptApplication>(
        'application', application);
    writer.writeBoolValue('attach_to_self', value: attachToSelf);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<SetupAttemptCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeCollectionOfEnumValues<SetupAttemptFlowDirections>(
        'flow_directions', flowDirections, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SetupAttemptObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<SetupAttemptOnBehalfOf>('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<SetupAttemptPaymentMethod>(
        'payment_method', paymentMethod);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<ApiErrors>('setup_error', setupError);
    writer.writeObjectValue<SetupAttemptSetupIntent>(
        'setup_intent', setupIntent);
    writer.writeStringValue('status', status);
    writer.writeStringValue('usage', usage);
    writer.writeAdditionalData(additionalData);
  }
}
