// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence.dart';

/// auto generated
/// Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
class WithDisputePostRequestBodyEvidence
    implements AdditionalDataHolder, Parsable {
  ///  The access_activity_log property
  String? accessActivityLog;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_address property
  String? billingAddress;

  ///  The cancellation_policy property
  String? cancellationPolicy;

  ///  The cancellation_policy_disclosure property
  String? cancellationPolicyDisclosure;

  ///  The cancellation_rebuttal property
  String? cancellationRebuttal;

  ///  The customer_communication property
  String? customerCommunication;

  ///  The customer_email_address property
  String? customerEmailAddress;

  ///  The customer_name property
  String? customerName;

  ///  The customer_purchase_ip property
  String? customerPurchaseIp;

  ///  The customer_signature property
  String? customerSignature;

  ///  The duplicate_charge_documentation property
  String? duplicateChargeDocumentation;

  ///  The duplicate_charge_explanation property
  String? duplicateChargeExplanation;

  ///  The duplicate_charge_id property
  String? duplicateChargeId;

  ///  The enhanced_evidence property
  WithDisputePostRequestBodyEvidenceEnhancedEvidence? enhancedEvidence;

  ///  The product_description property
  String? productDescription;

  ///  The receipt property
  String? receipt;

  ///  The refund_policy property
  String? refundPolicy;

  ///  The refund_policy_disclosure property
  String? refundPolicyDisclosure;

  ///  The refund_refusal_explanation property
  String? refundRefusalExplanation;

  ///  The service_date property
  String? serviceDate;

  ///  The service_documentation property
  String? serviceDocumentation;

  ///  The shipping_address property
  String? shippingAddress;

  ///  The shipping_carrier property
  String? shippingCarrier;

  ///  The shipping_date property
  String? shippingDate;

  ///  The shipping_documentation property
  String? shippingDocumentation;

  ///  The shipping_tracking_number property
  String? shippingTrackingNumber;

  ///  The uncategorized_file property
  String? uncategorizedFile;

  ///  The uncategorized_text property
  String? uncategorizedText;

  /// Instantiates a new [WithDisputePostRequestBodyEvidence] and sets the default values.
  WithDisputePostRequestBodyEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['access_activity_log'] =
        (node) => accessActivityLog = node.getStringValue();
    deserializerMap['billing_address'] =
        (node) => billingAddress = node.getStringValue();
    deserializerMap['cancellation_policy'] =
        (node) => cancellationPolicy = node.getStringValue();
    deserializerMap['cancellation_policy_disclosure'] =
        (node) => cancellationPolicyDisclosure = node.getStringValue();
    deserializerMap['cancellation_rebuttal'] =
        (node) => cancellationRebuttal = node.getStringValue();
    deserializerMap['customer_communication'] =
        (node) => customerCommunication = node.getStringValue();
    deserializerMap['customer_email_address'] =
        (node) => customerEmailAddress = node.getStringValue();
    deserializerMap['customer_name'] =
        (node) => customerName = node.getStringValue();
    deserializerMap['customer_purchase_ip'] =
        (node) => customerPurchaseIp = node.getStringValue();
    deserializerMap['customer_signature'] =
        (node) => customerSignature = node.getStringValue();
    deserializerMap['duplicate_charge_documentation'] =
        (node) => duplicateChargeDocumentation = node.getStringValue();
    deserializerMap['duplicate_charge_explanation'] =
        (node) => duplicateChargeExplanation = node.getStringValue();
    deserializerMap['duplicate_charge_id'] =
        (node) => duplicateChargeId = node.getStringValue();
    deserializerMap['enhanced_evidence'] = (node) => enhancedEvidence =
        node.getObjectValue<WithDisputePostRequestBodyEvidenceEnhancedEvidence>(
            WithDisputePostRequestBodyEvidenceEnhancedEvidence
                .createFromDiscriminatorValue);
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['receipt'] = (node) => receipt = node.getStringValue();
    deserializerMap['refund_policy'] =
        (node) => refundPolicy = node.getStringValue();
    deserializerMap['refund_policy_disclosure'] =
        (node) => refundPolicyDisclosure = node.getStringValue();
    deserializerMap['refund_refusal_explanation'] =
        (node) => refundRefusalExplanation = node.getStringValue();
    deserializerMap['service_date'] =
        (node) => serviceDate = node.getStringValue();
    deserializerMap['service_documentation'] =
        (node) => serviceDocumentation = node.getStringValue();
    deserializerMap['shipping_address'] =
        (node) => shippingAddress = node.getStringValue();
    deserializerMap['shipping_carrier'] =
        (node) => shippingCarrier = node.getStringValue();
    deserializerMap['shipping_date'] =
        (node) => shippingDate = node.getStringValue();
    deserializerMap['shipping_documentation'] =
        (node) => shippingDocumentation = node.getStringValue();
    deserializerMap['shipping_tracking_number'] =
        (node) => shippingTrackingNumber = node.getStringValue();
    deserializerMap['uncategorized_file'] =
        (node) => uncategorizedFile = node.getStringValue();
    deserializerMap['uncategorized_text'] =
        (node) => uncategorizedText = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('access_activity_log', accessActivityLog);
    writer.writeStringValue('billing_address', billingAddress);
    writer.writeStringValue('cancellation_policy', cancellationPolicy);
    writer.writeStringValue(
        'cancellation_policy_disclosure', cancellationPolicyDisclosure);
    writer.writeStringValue('cancellation_rebuttal', cancellationRebuttal);
    writer.writeStringValue('customer_communication', customerCommunication);
    writer.writeStringValue('customer_email_address', customerEmailAddress);
    writer.writeStringValue('customer_name', customerName);
    writer.writeStringValue('customer_purchase_ip', customerPurchaseIp);
    writer.writeStringValue('customer_signature', customerSignature);
    writer.writeStringValue(
        'duplicate_charge_documentation', duplicateChargeDocumentation);
    writer.writeStringValue(
        'duplicate_charge_explanation', duplicateChargeExplanation);
    writer.writeStringValue('duplicate_charge_id', duplicateChargeId);
    writer.writeObjectValue<WithDisputePostRequestBodyEvidenceEnhancedEvidence>(
        'enhanced_evidence', enhancedEvidence);
    writer.writeStringValue('product_description', productDescription);
    writer.writeStringValue('receipt', receipt);
    writer.writeStringValue('refund_policy', refundPolicy);
    writer.writeStringValue('refund_policy_disclosure', refundPolicyDisclosure);
    writer.writeStringValue(
        'refund_refusal_explanation', refundRefusalExplanation);
    writer.writeStringValue('service_date', serviceDate);
    writer.writeStringValue('service_documentation', serviceDocumentation);
    writer.writeStringValue('shipping_address', shippingAddress);
    writer.writeStringValue('shipping_carrier', shippingCarrier);
    writer.writeStringValue('shipping_date', shippingDate);
    writer.writeStringValue('shipping_documentation', shippingDocumentation);
    writer.writeStringValue('shipping_tracking_number', shippingTrackingNumber);
    writer.writeStringValue('uncategorized_file', uncategorizedFile);
    writer.writeStringValue('uncategorized_text', uncategorizedText);
    writer.writeAdditionalData(additionalData);
  }
}
