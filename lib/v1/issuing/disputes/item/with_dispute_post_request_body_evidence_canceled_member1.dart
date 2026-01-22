// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_canceled_at.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_cancellation_policy_provided.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_cancellation_reason.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_expected_at.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_explanation.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_product_description.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_product_type.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_return_status.dart';
import './with_dispute_post_request_body_evidence_canceled_member1_returned_at.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceCanceledMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceCanceledMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The canceled_at property
  WithDisputePostRequestBodyEvidenceCanceledMember1CanceledAt? canceledAt;

  ///  The cancellation_policy_provided property
  WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided?
      cancellationPolicyProvided;

  ///  The cancellation_reason property
  WithDisputePostRequestBodyEvidenceCanceledMember1CancellationReason?
      cancellationReason;

  ///  The expected_at property
  WithDisputePostRequestBodyEvidenceCanceledMember1ExpectedAt? expectedAt;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceCanceledMember1Explanation? explanation;

  ///  The product_description property
  WithDisputePostRequestBodyEvidenceCanceledMember1ProductDescription?
      productDescription;

  ///  The product_type property
  WithDisputePostRequestBodyEvidenceCanceledMember1ProductType? productType;

  ///  The returned_at property
  WithDisputePostRequestBodyEvidenceCanceledMember1ReturnedAt? returnedAt;

  ///  The return_status property
  WithDisputePostRequestBodyEvidenceCanceledMember1ReturnStatus? returnStatus;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceCanceledMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceCanceledMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceCanceledMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceCanceledMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceCanceledMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceCanceledMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1CanceledAt>(
        WithDisputePostRequestBodyEvidenceCanceledMember1CanceledAt
            .createFromDiscriminatorValue);
    deserializerMap['cancellation_policy_provided'] = (node) =>
        cancellationPolicyProvided = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided>(
            WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided
                .createFromDiscriminatorValue);
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceCanceledMember1CancellationReason>(
            WithDisputePostRequestBodyEvidenceCanceledMember1CancellationReason
                .createFromDiscriminatorValue);
    deserializerMap['expected_at'] = (node) => expectedAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ExpectedAt>(
        WithDisputePostRequestBodyEvidenceCanceledMember1ExpectedAt
            .createFromDiscriminatorValue);
    deserializerMap['explanation'] = (node) => explanation =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceCanceledMember1Explanation>(
            WithDisputePostRequestBodyEvidenceCanceledMember1Explanation
                .createFromDiscriminatorValue);
    deserializerMap['product_description'] = (node) => productDescription =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceCanceledMember1ProductDescription>(
            WithDisputePostRequestBodyEvidenceCanceledMember1ProductDescription
                .createFromDiscriminatorValue);
    deserializerMap['product_type'] = (node) => productType = node.getEnumValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ProductType>(
        (stringValue) =>
            WithDisputePostRequestBodyEvidenceCanceledMember1ProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['returned_at'] = (node) => returnedAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ReturnedAt>(
        WithDisputePostRequestBodyEvidenceCanceledMember1ReturnedAt
            .createFromDiscriminatorValue);
    deserializerMap['return_status'] = (node) => returnStatus =
        node.getEnumValue<
                WithDisputePostRequestBodyEvidenceCanceledMember1ReturnStatus>(
            (stringValue) =>
                WithDisputePostRequestBodyEvidenceCanceledMember1ReturnStatus
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
            WithDisputePostRequestBodyEvidenceCanceledMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1CanceledAt>(
        'canceled_at', canceledAt);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided>(
        'cancellation_policy_provided', cancellationPolicyProvided);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1CancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ExpectedAt>(
        'expected_at', expectedAt);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ReturnedAt>(
        'returned_at', returnedAt);
    writer.writeEnumValue<
            WithDisputePostRequestBodyEvidenceCanceledMember1ReturnStatus>(
        'return_status', returnStatus, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
