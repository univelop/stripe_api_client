// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_canceled_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_canceled_member1_canceled_at.dart';
import './disputes_post_request_body_evidence_canceled_member1_cancellation_policy_provided.dart';
import './disputes_post_request_body_evidence_canceled_member1_cancellation_reason.dart';
import './disputes_post_request_body_evidence_canceled_member1_expected_at.dart';
import './disputes_post_request_body_evidence_canceled_member1_explanation.dart';
import './disputes_post_request_body_evidence_canceled_member1_product_description.dart';
import './disputes_post_request_body_evidence_canceled_member1_product_type.dart';
import './disputes_post_request_body_evidence_canceled_member1_return_status.dart';
import './disputes_post_request_body_evidence_canceled_member1_returned_at.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceCanceledMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceCanceledMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The canceled_at property
  DisputesPostRequestBodyEvidenceCanceledMember1CanceledAt? canceledAt;

  ///  The cancellation_policy_provided property
  DisputesPostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided?
      cancellationPolicyProvided;

  ///  The cancellation_reason property
  DisputesPostRequestBodyEvidenceCanceledMember1CancellationReason?
      cancellationReason;

  ///  The expected_at property
  DisputesPostRequestBodyEvidenceCanceledMember1ExpectedAt? expectedAt;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceCanceledMember1Explanation? explanation;

  ///  The product_description property
  DisputesPostRequestBodyEvidenceCanceledMember1ProductDescription?
      productDescription;

  ///  The product_type property
  DisputesPostRequestBodyEvidenceCanceledMember1ProductType? productType;

  ///  The returned_at property
  DisputesPostRequestBodyEvidenceCanceledMember1ReturnedAt? returnedAt;

  ///  The return_status property
  DisputesPostRequestBodyEvidenceCanceledMember1ReturnStatus? returnStatus;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceCanceledMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceCanceledMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceCanceledMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceCanceledMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceCanceledMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceCanceledMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1CanceledAt>(
        DisputesPostRequestBodyEvidenceCanceledMember1CanceledAt
            .createFromDiscriminatorValue);
    deserializerMap['cancellation_policy_provided'] = (node) =>
        cancellationPolicyProvided = node.getObjectValue<
                DisputesPostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided>(
            DisputesPostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided
                .createFromDiscriminatorValue);
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceCanceledMember1CancellationReason>(
            DisputesPostRequestBodyEvidenceCanceledMember1CancellationReason
                .createFromDiscriminatorValue);
    deserializerMap['expected_at'] = (node) => expectedAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ExpectedAt>(
        DisputesPostRequestBodyEvidenceCanceledMember1ExpectedAt
            .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceCanceledMember1Explanation>(
            DisputesPostRequestBodyEvidenceCanceledMember1Explanation
                .createFromDiscriminatorValue);
    deserializerMap['product_description'] = (node) => productDescription =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceCanceledMember1ProductDescription>(
            DisputesPostRequestBodyEvidenceCanceledMember1ProductDescription
                .createFromDiscriminatorValue);
    deserializerMap['product_type'] = (node) => productType = node.getEnumValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ProductType>(
        (stringValue) =>
            DisputesPostRequestBodyEvidenceCanceledMember1ProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['returned_at'] = (node) => returnedAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ReturnedAt>(
        DisputesPostRequestBodyEvidenceCanceledMember1ReturnedAt
            .createFromDiscriminatorValue);
    deserializerMap['return_status'] = (node) => returnStatus =
        node.getEnumValue<
                DisputesPostRequestBodyEvidenceCanceledMember1ReturnStatus>(
            (stringValue) =>
                DisputesPostRequestBodyEvidenceCanceledMember1ReturnStatus
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
            DisputesPostRequestBodyEvidenceCanceledMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1CanceledAt>(
        'canceled_at', canceledAt);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided>(
        'cancellation_policy_provided', cancellationPolicyProvided);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1CancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ExpectedAt>(
        'expected_at', expectedAt);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ReturnedAt>(
        'returned_at', returnedAt);
    writer.writeEnumValue<
            DisputesPostRequestBodyEvidenceCanceledMember1ReturnStatus>(
        'return_status', returnStatus, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
