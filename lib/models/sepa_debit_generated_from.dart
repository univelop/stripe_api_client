// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sepa_debit_generated_from_charge.dart';
import './sepa_debit_generated_from_setup_attempt.dart';

/// auto generated
class SepaDebitGeneratedFrom implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of the Charge that generated this PaymentMethod, if any.
  SepaDebitGeneratedFromCharge? charge;

  ///  The ID of the SetupAttempt that generated this PaymentMethod, if any.
  SepaDebitGeneratedFromSetupAttempt? setupAttempt;

  /// Instantiates a new [SepaDebitGeneratedFrom] and sets the default values.
  SepaDebitGeneratedFrom() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SepaDebitGeneratedFrom createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SepaDebitGeneratedFrom();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['charge'] = (node) => charge =
        node.getObjectValue<SepaDebitGeneratedFromCharge>(
            SepaDebitGeneratedFromCharge.createFromDiscriminatorValue);
    deserializerMap['setup_attempt'] = (node) => setupAttempt =
        node.getObjectValue<SepaDebitGeneratedFromSetupAttempt>(
            SepaDebitGeneratedFromSetupAttempt.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SepaDebitGeneratedFromCharge>('charge', charge);
    writer.writeObjectValue<SepaDebitGeneratedFromSetupAttempt>(
        'setup_attempt', setupAttempt);
    writer.writeAdditionalData(additionalData);
  }
}
