// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_fraudulent_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_fraudulent_member1_explanation.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceFraudulentMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceFraudulentMember1Explanation? explanation;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceFraudulentMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceFraudulentMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceFraudulentMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceFraudulentMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceFraudulentMember1Explanation>(
            DisputesPostRequestBodyEvidenceFraudulentMember1Explanation
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceFraudulentMember1Explanation>(
        'explanation', explanation);
    writer.writeAdditionalData(additionalData);
  }
}
