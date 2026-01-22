// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The disputed_transaction property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction?
      disputedTransaction;

  ///  The prior_undisputed_transactions property
  Iterable<
          WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions>?
      priorUndisputedTransactions;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3] and sets the default values.
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'disputed_transaction'] = (node) => disputedTransaction = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction
            .createFromDiscriminatorValue);
    deserializerMap['prior_undisputed_transactions'] = (node) =>
        priorUndisputedTransactions = node.getCollectionOfObjectValues<
                WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions>(
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction>(
        'disputed_transaction', disputedTransaction);
    writer.writeCollectionOfObjectValues<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions>(
        'prior_undisputed_transactions', priorUndisputedTransactions);
    writer.writeAdditionalData(additionalData);
  }
}
