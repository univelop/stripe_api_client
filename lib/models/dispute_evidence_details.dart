// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_enhanced_eligibility.dart';

/// auto generated
class DisputeEvidenceDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Date by which evidence must be submitted in order to successfully challenge dispute. Will be 0 if the customer's bank or credit card company doesn't allow a response for this particular dispute.
  int? dueBy;

  ///  The enhanced_eligibility property
  DisputeEnhancedEligibility? enhancedEligibility;

  ///  Whether evidence has been staged for this dispute.
  bool? hasEvidence;

  ///  Whether the last evidence submission was submitted past the due date. Defaults to `false` if no evidence submissions have occurred. If `true`, then delivery of the latest evidence is *not* guaranteed.
  bool? pastDue;

  ///  The number of times evidence has been submitted. Typically, you may only submit evidence once.
  int? submissionCount;

  /// Instantiates a new [DisputeEvidenceDetails] and sets the default values.
  DisputeEvidenceDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeEvidenceDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputeEvidenceDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['due_by'] = (node) => dueBy = node.getIntValue();
    deserializerMap['enhanced_eligibility'] = (node) => enhancedEligibility =
        node.getObjectValue<DisputeEnhancedEligibility>(
            DisputeEnhancedEligibility.createFromDiscriminatorValue);
    deserializerMap['has_evidence'] =
        (node) => hasEvidence = node.getBoolValue();
    deserializerMap['past_due'] = (node) => pastDue = node.getBoolValue();
    deserializerMap['submission_count'] =
        (node) => submissionCount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('due_by', dueBy);
    writer.writeObjectValue<DisputeEnhancedEligibility>(
        'enhanced_eligibility', enhancedEligibility);
    writer.writeBoolValue('has_evidence', value: hasEvidence);
    writer.writeBoolValue('past_due', value: pastDue);
    writer.writeIntValue('submission_count', submissionCount);
    writer.writeAdditionalData(additionalData);
  }
}
