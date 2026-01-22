// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_not_received_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_not_received_member1_expected_at.dart';
import './disputes_post_request_body_evidence_not_received_member1_explanation.dart';
import './disputes_post_request_body_evidence_not_received_member1_product_description.dart';
import './disputes_post_request_body_evidence_not_received_member1_product_type.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceNotReceivedMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The expected_at property
  DisputesPostRequestBodyEvidenceNotReceivedMember1ExpectedAt? expectedAt;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceNotReceivedMember1Explanation? explanation;

  ///  The product_description property
  DisputesPostRequestBodyEvidenceNotReceivedMember1ProductDescription?
      productDescription;

  ///  The product_type property
  DisputesPostRequestBodyEvidenceNotReceivedMember1ProductType? productType;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceNotReceivedMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceNotReceivedMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceNotReceivedMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceNotReceivedMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['expected_at'] = (node) => expectedAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1ExpectedAt>(
        DisputesPostRequestBodyEvidenceNotReceivedMember1ExpectedAt
            .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceNotReceivedMember1Explanation>(
            DisputesPostRequestBodyEvidenceNotReceivedMember1Explanation
                .createFromDiscriminatorValue);
    deserializerMap['product_description'] = (node) => productDescription =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceNotReceivedMember1ProductDescription>(
            DisputesPostRequestBodyEvidenceNotReceivedMember1ProductDescription
                .createFromDiscriminatorValue);
    deserializerMap['product_type'] = (node) => productType = node.getEnumValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1ProductType>(
        (stringValue) =>
            DisputesPostRequestBodyEvidenceNotReceivedMember1ProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1ExpectedAt>(
        'expected_at', expectedAt);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            DisputesPostRequestBodyEvidenceNotReceivedMember1ProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
