// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_no_valid_authorization_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_no_valid_authorization_member1_explanation.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1Explanation?
      explanation;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1Explanation>(
        WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1Explanation
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNoValidAuthorizationMember1Explanation>(
        'explanation', explanation);
    writer.writeAdditionalData(additionalData);
  }
}
