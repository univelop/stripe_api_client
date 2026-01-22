// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_not_received_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_not_received_member1_expected_at.dart';
import './with_dispute_post_request_body_evidence_not_received_member1_explanation.dart';
import './with_dispute_post_request_body_evidence_not_received_member1_product_description.dart';
import './with_dispute_post_request_body_evidence_not_received_member1_product_type.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceNotReceivedMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The expected_at property
  WithDisputePostRequestBodyEvidenceNotReceivedMember1ExpectedAt? expectedAt;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceNotReceivedMember1Explanation? explanation;

  ///  The product_description property
  WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductDescription?
      productDescription;

  ///  The product_type property
  WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductType? productType;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceNotReceivedMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceNotReceivedMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceNotReceivedMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceNotReceivedMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['expected_at'] = (node) => expectedAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ExpectedAt>(
        WithDisputePostRequestBodyEvidenceNotReceivedMember1ExpectedAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1Explanation>(
        WithDisputePostRequestBodyEvidenceNotReceivedMember1Explanation
            .createFromDiscriminatorValue);
    deserializerMap[
        'product_description'] = (node) => productDescription = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductDescription>(
        WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductDescription
            .createFromDiscriminatorValue);
    deserializerMap['product_type'] = (node) => productType = node.getEnumValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductType>(
        (stringValue) =>
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ExpectedAt>(
        'expected_at', expectedAt);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            WithDisputePostRequestBodyEvidenceNotReceivedMember1ProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
