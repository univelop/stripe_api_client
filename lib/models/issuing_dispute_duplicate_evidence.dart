// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_duplicate_evidence_additional_documentation.dart';
import './issuing_dispute_duplicate_evidence_card_statement.dart';
import './issuing_dispute_duplicate_evidence_cash_receipt.dart';
import './issuing_dispute_duplicate_evidence_check_image.dart';

/// auto generated
class IssuingDisputeDuplicateEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeDuplicateEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
  IssuingDisputeDuplicateEvidenceCardStatement? cardStatement;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
  IssuingDisputeDuplicateEvidenceCashReceipt? cashReceipt;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
  IssuingDisputeDuplicateEvidenceCheckImage? checkImage;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  ///  Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
  String? originalTransaction;

  /// Instantiates a new [IssuingDisputeDuplicateEvidence] and sets the default values.
  IssuingDisputeDuplicateEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeDuplicateEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingDisputeDuplicateEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeDuplicateEvidenceAdditionalDocumentation>(
            IssuingDisputeDuplicateEvidenceAdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['card_statement'] = (node) => cardStatement =
        node.getObjectValue<IssuingDisputeDuplicateEvidenceCardStatement>(
            IssuingDisputeDuplicateEvidenceCardStatement
                .createFromDiscriminatorValue);
    deserializerMap['cash_receipt'] = (node) => cashReceipt =
        node.getObjectValue<IssuingDisputeDuplicateEvidenceCashReceipt>(
            IssuingDisputeDuplicateEvidenceCashReceipt
                .createFromDiscriminatorValue);
    deserializerMap['check_image'] = (node) => checkImage = node.getObjectValue<
            IssuingDisputeDuplicateEvidenceCheckImage>(
        IssuingDisputeDuplicateEvidenceCheckImage.createFromDiscriminatorValue);
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    deserializerMap['original_transaction'] =
        (node) => originalTransaction = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IssuingDisputeDuplicateEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<IssuingDisputeDuplicateEvidenceCardStatement>(
        'card_statement', cardStatement);
    writer.writeObjectValue<IssuingDisputeDuplicateEvidenceCashReceipt>(
        'cash_receipt', cashReceipt);
    writer.writeObjectValue<IssuingDisputeDuplicateEvidenceCheckImage>(
        'check_image', checkImage);
    writer.writeStringValue('explanation', explanation);
    writer.writeStringValue('original_transaction', originalTransaction);
    writer.writeAdditionalData(additionalData);
  }
}
