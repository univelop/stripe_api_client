// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_other_evidence_additional_documentation.dart';
import './issuing_dispute_other_evidence_product_type.dart';

/// auto generated
class IssuingDisputeOtherEvidence implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeOtherEvidenceAdditionalDocumentation? additionalDocumentation;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  ///  Description of the merchandise or service that was purchased.
  String? productDescription;

  ///  Whether the product was a merchandise or service.
  IssuingDisputeOtherEvidenceProductType? productType;

  /// Instantiates a new [IssuingDisputeOtherEvidence] and sets the default values.
  IssuingDisputeOtherEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeOtherEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingDisputeOtherEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node
            .getObjectValue<IssuingDisputeOtherEvidenceAdditionalDocumentation>(
                IssuingDisputeOtherEvidenceAdditionalDocumentation
                    .createFromDiscriminatorValue);
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['product_type'] = (node) => productType =
        node.getEnumValue<IssuingDisputeOtherEvidenceProductType>(
            (stringValue) => IssuingDisputeOtherEvidenceProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingDisputeOtherEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeStringValue('explanation', explanation);
    writer.writeStringValue('product_description', productDescription);
    writer.writeEnumValue<IssuingDisputeOtherEvidenceProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
