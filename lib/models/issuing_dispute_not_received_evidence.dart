// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_not_received_evidence_additional_documentation.dart';
import './issuing_dispute_not_received_evidence_product_type.dart';

/// auto generated
class IssuingDisputeNotReceivedEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeNotReceivedEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  Date when the cardholder expected to receive the product.
  int? expectedAt;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  ///  Description of the merchandise or service that was purchased.
  String? productDescription;

  ///  Whether the product was a merchandise or service.
  IssuingDisputeNotReceivedEvidenceProductType? productType;

  /// Instantiates a new [IssuingDisputeNotReceivedEvidence] and sets the default values.
  IssuingDisputeNotReceivedEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeNotReceivedEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingDisputeNotReceivedEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeNotReceivedEvidenceAdditionalDocumentation>(
            IssuingDisputeNotReceivedEvidenceAdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['expected_at'] = (node) => expectedAt = node.getIntValue();
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['product_type'] = (node) => productType =
        node.getEnumValue<IssuingDisputeNotReceivedEvidenceProductType>(
            (stringValue) => IssuingDisputeNotReceivedEvidenceProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IssuingDisputeNotReceivedEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeIntValue('expected_at', expectedAt);
    writer.writeStringValue('explanation', explanation);
    writer.writeStringValue('product_description', productDescription);
    writer.writeEnumValue<IssuingDisputeNotReceivedEvidenceProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
