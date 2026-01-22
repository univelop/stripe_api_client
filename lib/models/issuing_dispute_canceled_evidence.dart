// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_canceled_evidence_additional_documentation.dart';
import './issuing_dispute_canceled_evidence_product_type.dart';
import './issuing_dispute_canceled_evidence_return_status.dart';

/// auto generated
class IssuingDisputeCanceledEvidence implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeCanceledEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  Date when order was canceled.
  int? canceledAt;

  ///  Whether the cardholder was provided with a cancellation policy.
  bool? cancellationPolicyProvided;

  ///  Reason for canceling the order.
  String? cancellationReason;

  ///  Date when the cardholder expected to receive the product.
  int? expectedAt;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  ///  Description of the merchandise or service that was purchased.
  String? productDescription;

  ///  Whether the product was a merchandise or service.
  IssuingDisputeCanceledEvidenceProductType? productType;

  ///  Date when the product was returned or attempted to be returned.
  int? returnedAt;

  ///  Result of cardholder's attempt to return the product.
  IssuingDisputeCanceledEvidenceReturnStatus? returnStatus;

  /// Instantiates a new [IssuingDisputeCanceledEvidence] and sets the default values.
  IssuingDisputeCanceledEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeCanceledEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingDisputeCanceledEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeCanceledEvidenceAdditionalDocumentation>(
            IssuingDisputeCanceledEvidenceAdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['cancellation_policy_provided'] =
        (node) => cancellationPolicyProvided = node.getBoolValue();
    deserializerMap['cancellation_reason'] =
        (node) => cancellationReason = node.getStringValue();
    deserializerMap['expected_at'] = (node) => expectedAt = node.getIntValue();
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['product_type'] = (node) => productType =
        node.getEnumValue<IssuingDisputeCanceledEvidenceProductType>(
            (stringValue) => IssuingDisputeCanceledEvidenceProductType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['returned_at'] = (node) => returnedAt = node.getIntValue();
    deserializerMap['return_status'] = (node) => returnStatus =
        node.getEnumValue<IssuingDisputeCanceledEvidenceReturnStatus>(
            (stringValue) => IssuingDisputeCanceledEvidenceReturnStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IssuingDisputeCanceledEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeBoolValue('cancellation_policy_provided',
        value: cancellationPolicyProvided);
    writer.writeStringValue('cancellation_reason', cancellationReason);
    writer.writeIntValue('expected_at', expectedAt);
    writer.writeStringValue('explanation', explanation);
    writer.writeStringValue('product_description', productDescription);
    writer.writeEnumValue<IssuingDisputeCanceledEvidenceProductType>(
        'product_type', productType, (e) => e?.value);
    writer.writeIntValue('returned_at', returnedAt);
    writer.writeEnumValue<IssuingDisputeCanceledEvidenceReturnStatus>(
        'return_status', returnStatus, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
