// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_fraudulent_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_fraudulent_member1_explanation.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceFraudulentMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceFraudulentMember1Explanation? explanation;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceFraudulentMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceFraudulentMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceFraudulentMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceFraudulentMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceFraudulentMember1Explanation>(
            WithDisputePostRequestBodyEvidenceFraudulentMember1Explanation
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceFraudulentMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceFraudulentMember1Explanation>(
        'explanation', explanation);
    writer.writeAdditionalData(additionalData);
  }
}
