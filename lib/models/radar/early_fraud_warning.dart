// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './early_fraud_warning_charge.dart';
import './early_fraud_warning_object.dart';
import './early_fraud_warning_payment_intent.dart';

/// auto generated
/// An early fraud warning indicates that the card issuer has notified us that acharge may be fraudulent.Related guide: [Early fraud warnings](https://docs.stripe.com/disputes/measuring#early-fraud-warnings)
class EarlyFraudWarning implements AdditionalDataHolder, Parsable {
  ///  An EFW is actionable if it has not received a dispute and has not been fully refunded. You may wish to proactively refund a charge that receives an EFW, in order to avoid receiving a dispute later.
  bool? actionable;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the charge this early fraud warning is for, optionally expanded.
  EarlyFraudWarningCharge? charge;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The type of fraud labelled by the issuer. One of `card_never_received`, `fraudulent_card_application`, `made_with_counterfeit_card`, `made_with_lost_card`, `made_with_stolen_card`, `misc`, `unauthorized_use_of_card`.
  String? fraudType;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  EarlyFraudWarningObject? object;

  ///  ID of the Payment Intent this early fraud warning is for, optionally expanded.
  EarlyFraudWarningPaymentIntent? paymentIntent;

  /// Instantiates a new [EarlyFraudWarning] and sets the default values.
  EarlyFraudWarning() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static EarlyFraudWarning createFromDiscriminatorValue(ParseNode parseNode) {
    return EarlyFraudWarning();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['actionable'] = (node) => actionable = node.getBoolValue();
    deserializerMap['charge'] = (node) => charge =
        node.getObjectValue<EarlyFraudWarningCharge>(
            EarlyFraudWarningCharge.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['fraud_type'] = (node) => fraudType = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<EarlyFraudWarningObject>((stringValue) =>
            EarlyFraudWarningObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<EarlyFraudWarningPaymentIntent>(
            EarlyFraudWarningPaymentIntent.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('actionable', value: actionable);
    writer.writeObjectValue<EarlyFraudWarningCharge>('charge', charge);
    writer.writeIntValue('created', created);
    writer.writeStringValue('fraud_type', fraudType);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<EarlyFraudWarningObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<EarlyFraudWarningPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeAdditionalData(additionalData);
  }
}
