// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_duplicate_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_duplicate_member1_card_statement.dart';
import './with_dispute_post_request_body_evidence_duplicate_member1_cash_receipt.dart';
import './with_dispute_post_request_body_evidence_duplicate_member1_check_image.dart';
import './with_dispute_post_request_body_evidence_duplicate_member1_explanation.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceDuplicateMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The card_statement property
  WithDisputePostRequestBodyEvidenceDuplicateMember1CardStatement?
      cardStatement;

  ///  The cash_receipt property
  WithDisputePostRequestBodyEvidenceDuplicateMember1CashReceipt? cashReceipt;

  ///  The check_image property
  WithDisputePostRequestBodyEvidenceDuplicateMember1CheckImage? checkImage;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceDuplicateMember1Explanation? explanation;

  ///  The original_transaction property
  String? originalTransaction;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceDuplicateMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceDuplicateMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceDuplicateMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceDuplicateMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap[
        'card_statement'] = (node) => cardStatement = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceDuplicateMember1CardStatement>(
        WithDisputePostRequestBodyEvidenceDuplicateMember1CardStatement
            .createFromDiscriminatorValue);
    deserializerMap['cash_receipt'] = (node) => cashReceipt =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceDuplicateMember1CashReceipt>(
            WithDisputePostRequestBodyEvidenceDuplicateMember1CashReceipt
                .createFromDiscriminatorValue);
    deserializerMap['check_image'] = (node) => checkImage = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceDuplicateMember1CheckImage>(
        WithDisputePostRequestBodyEvidenceDuplicateMember1CheckImage
            .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceDuplicateMember1Explanation>(
            WithDisputePostRequestBodyEvidenceDuplicateMember1Explanation
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
            WithDisputePostRequestBodyEvidenceDuplicateMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceDuplicateMember1CardStatement>(
        'card_statement', cardStatement);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceDuplicateMember1CashReceipt>(
        'cash_receipt', cashReceipt);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceDuplicateMember1CheckImage>(
        'check_image', checkImage);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceDuplicateMember1Explanation>(
        'explanation', explanation);
    writer.writeStringValue('original_transaction', originalTransaction);
    writer.writeAdditionalData(additionalData);
  }
}
