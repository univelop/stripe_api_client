// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_other_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_other_member1_explanation.dart';
import './disputes_post_request_body_evidence_other_member1_product_description.dart';
import './disputes_post_request_body_evidence_other_member1_product_type.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceOtherMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceOtherMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceOtherMember1Explanation? explanation;

  ///  The product_description property
  DisputesPostRequestBodyEvidenceOtherMember1ProductDescription?
      productDescription;

  ///  The product_type property
  DisputesPostRequestBodyEvidenceOtherMember1ProductType? productType;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceOtherMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceOtherMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceOtherMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceOtherMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceOtherMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceOtherMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation = node
        .getObjectValue<DisputesPostRequestBodyEvidenceOtherMember1Explanation>(
            DisputesPostRequestBodyEvidenceOtherMember1Explanation
                .createFromDiscriminatorValue);
    deserializerMap['product_description'] = (node) => productDescription =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceOtherMember1ProductDescription>(
            DisputesPostRequestBodyEvidenceOtherMember1ProductDescription
                .createFromDiscriminatorValue);
    deserializerMap['product_type'] = (node) => productType = node
        .getEnumValue<DisputesPostRequestBodyEvidenceOtherMember1ProductType>(
            (stringValue) =>
                DisputesPostRequestBodyEvidenceOtherMember1ProductType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceOtherMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceOtherMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceOtherMember1ProductDescription>(
        'product_description', productDescription);
    writer
        .writeEnumValue<DisputesPostRequestBodyEvidenceOtherMember1ProductType>(
            'product_type', productType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
