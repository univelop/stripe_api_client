// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions.dart';

/// auto generated
class DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The disputed_transaction property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction?
      disputedTransaction;

  ///  The prior_undisputed_transactions property
  Iterable<
          DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions>?
      priorUndisputedTransactions;

  /// Instantiates a new [DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3] and sets the default values.
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'disputed_transaction'] = (node) => disputedTransaction = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction
            .createFromDiscriminatorValue);
    deserializerMap['prior_undisputed_transactions'] = (node) =>
        priorUndisputedTransactions = node.getCollectionOfObjectValues<
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions>(
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction>(
        'disputed_transaction', disputedTransaction);
    writer.writeCollectionOfObjectValues<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions>(
        'prior_undisputed_transactions', priorUndisputedTransactions);
    writer.writeAdditionalData(additionalData);
  }
}
