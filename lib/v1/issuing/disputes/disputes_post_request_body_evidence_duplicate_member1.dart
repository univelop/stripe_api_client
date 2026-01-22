// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_duplicate_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_duplicate_member1_card_statement.dart';
import './disputes_post_request_body_evidence_duplicate_member1_cash_receipt.dart';
import './disputes_post_request_body_evidence_duplicate_member1_check_image.dart';
import './disputes_post_request_body_evidence_duplicate_member1_explanation.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceDuplicateMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The card_statement property
  DisputesPostRequestBodyEvidenceDuplicateMember1CardStatement? cardStatement;

  ///  The cash_receipt property
  DisputesPostRequestBodyEvidenceDuplicateMember1CashReceipt? cashReceipt;

  ///  The check_image property
  DisputesPostRequestBodyEvidenceDuplicateMember1CheckImage? checkImage;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceDuplicateMember1Explanation? explanation;

  ///  The original_transaction property
  String? originalTransaction;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceDuplicateMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceDuplicateMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceDuplicateMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceDuplicateMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['card_statement'] = (node) => cardStatement =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceDuplicateMember1CardStatement>(
            DisputesPostRequestBodyEvidenceDuplicateMember1CardStatement
                .createFromDiscriminatorValue);
    deserializerMap['cash_receipt'] = (node) => cashReceipt =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceDuplicateMember1CashReceipt>(
            DisputesPostRequestBodyEvidenceDuplicateMember1CashReceipt
                .createFromDiscriminatorValue);
    deserializerMap['check_image'] = (node) => checkImage = node.getObjectValue<
            DisputesPostRequestBodyEvidenceDuplicateMember1CheckImage>(
        DisputesPostRequestBodyEvidenceDuplicateMember1CheckImage
            .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceDuplicateMember1Explanation>(
            DisputesPostRequestBodyEvidenceDuplicateMember1Explanation
                .createFromDiscriminatorValue);
    deserializerMap['original_transaction'] =
        (node) => originalTransaction = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceDuplicateMember1CardStatement>(
        'card_statement', cardStatement);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceDuplicateMember1CashReceipt>(
        'cash_receipt', cashReceipt);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceDuplicateMember1CheckImage>(
        'check_image', checkImage);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceDuplicateMember1Explanation>(
        'explanation', explanation);
    writer.writeStringValue('original_transaction', originalTransaction);
    writer.writeAdditionalData(additionalData);
  }
}
