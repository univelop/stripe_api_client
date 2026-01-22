// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_no_valid_authorization_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_no_valid_authorization_member1_explanation.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1Explanation?
      explanation;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1Explanation>(
        DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1Explanation
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1Explanation>(
        'explanation', explanation);
    writer.writeAdditionalData(additionalData);
  }
}
