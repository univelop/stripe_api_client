// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_next_action_konbini_familymart.dart';
import './payment_intent_next_action_konbini_lawson.dart';
import './payment_intent_next_action_konbini_ministop.dart';
import './payment_intent_next_action_konbini_seicomart.dart';

/// auto generated
class PaymentIntentNextActionKonbiniStores
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  FamilyMart instruction details.
  PaymentIntentNextActionKonbiniFamilymart? familymart;

  ///  Lawson instruction details.
  PaymentIntentNextActionKonbiniLawson? lawson;

  ///  Ministop instruction details.
  PaymentIntentNextActionKonbiniMinistop? ministop;

  ///  Seicomart instruction details.
  PaymentIntentNextActionKonbiniSeicomart? seicomart;

  /// Instantiates a new [PaymentIntentNextActionKonbiniStores] and sets the default values.
  PaymentIntentNextActionKonbiniStores() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionKonbiniStores createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionKonbiniStores();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['familymart'] = (node) => familymart = node.getObjectValue<
            PaymentIntentNextActionKonbiniFamilymart>(
        PaymentIntentNextActionKonbiniFamilymart.createFromDiscriminatorValue);
    deserializerMap['lawson'] = (node) => lawson =
        node.getObjectValue<PaymentIntentNextActionKonbiniLawson>(
            PaymentIntentNextActionKonbiniLawson.createFromDiscriminatorValue);
    deserializerMap['ministop'] = (node) => ministop = node.getObjectValue<
            PaymentIntentNextActionKonbiniMinistop>(
        PaymentIntentNextActionKonbiniMinistop.createFromDiscriminatorValue);
    deserializerMap['seicomart'] = (node) => seicomart = node.getObjectValue<
            PaymentIntentNextActionKonbiniSeicomart>(
        PaymentIntentNextActionKonbiniSeicomart.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentIntentNextActionKonbiniFamilymart>(
        'familymart', familymart);
    writer.writeObjectValue<PaymentIntentNextActionKonbiniLawson>(
        'lawson', lawson);
    writer.writeObjectValue<PaymentIntentNextActionKonbiniMinistop>(
        'ministop', ministop);
    writer.writeObjectValue<PaymentIntentNextActionKonbiniSeicomart>(
        'seicomart', seicomart);
    writer.writeAdditionalData(additionalData);
  }
}
