// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class DisputeEnhancedEvidenceVisaCompliance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A field acknowledging the fee incurred when countering a Visa compliance dispute. If this field is set to true, evidence can be submitted for the compliance dispute. Stripe collects a 500 USD (or local equivalent) amount to cover the network costs associated with resolving compliance disputes. Stripe refunds the 500 USD network fee if you win the dispute.
  bool? feeAcknowledged;

  /// Instantiates a new [DisputeEnhancedEvidenceVisaCompliance] and sets the default values.
  DisputeEnhancedEvidenceVisaCompliance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeEnhancedEvidenceVisaCompliance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputeEnhancedEvidenceVisaCompliance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fee_acknowledged'] =
        (node) => feeAcknowledged = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('fee_acknowledged', value: feeAcknowledged);
    writer.writeAdditionalData(additionalData);
  }
}
