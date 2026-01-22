// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fee_acknowledged property
  bool? feeAcknowledged;

  /// Instantiates a new [DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance] and sets the default values.
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance();
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
