// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_other_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_other_member1_explanation.dart';
import './with_dispute_post_request_body_evidence_other_member1_product_description.dart';
import './with_dispute_post_request_body_evidence_other_member1_product_type.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceOtherMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceOtherMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceOtherMember1Explanation? explanation;

  ///  The product_description property
  WithDisputePostRequestBodyEvidenceOtherMember1ProductDescription?
      productDescription;

  ///  The product_type property
  WithDisputePostRequestBodyEvidenceOtherMember1ProductType? productType;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceOtherMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceOtherMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceOtherMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceOtherMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceOtherMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceOtherMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceOtherMember1Explanation>(
            WithDisputePostRequestBodyEvidenceOtherMember1Explanation
                .createFromDiscriminatorValue);
    deserializerMap['product_description'] = (node) => productDescription =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceOtherMember1ProductDescription>(
            WithDisputePostRequestBodyEvidenceOtherMember1ProductDescription
                .createFromDiscriminatorValue);
    deserializerMap['product_type'] = (node) => productType = node.getEnumValue<
            WithDisputePostRequestBodyEvidenceOtherMember1ProductType>(
        (stringValue) =>
            WithDisputePostRequestBodyEvidenceOtherMember1ProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceOtherMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceOtherMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceOtherMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            WithDisputePostRequestBodyEvidenceOtherMember1ProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
