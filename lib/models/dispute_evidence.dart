// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_enhanced_evidence.dart';
import './dispute_evidence_cancellation_policy.dart';
import './dispute_evidence_customer_communication.dart';
import './dispute_evidence_customer_signature.dart';
import './dispute_evidence_duplicate_charge_documentation.dart';
import './dispute_evidence_receipt.dart';
import './dispute_evidence_refund_policy.dart';
import './dispute_evidence_service_documentation.dart';
import './dispute_evidence_shipping_documentation.dart';
import './dispute_evidence_uncategorized_file.dart';

/// auto generated
class DisputeEvidence implements AdditionalDataHolder, Parsable {
  ///  Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity.
  String? accessActivityLog;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing address provided by the customer.
  String? billingAddress;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
  DisputeEvidenceCancellationPolicy? cancellationPolicy;

  ///  An explanation of how and when the customer was shown your refund policy prior to purchase.
  String? cancellationPolicyDisclosure;

  ///  A justification for why the customer's subscription was not canceled.
  String? cancellationRebuttal;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
  DisputeEvidenceCustomerCommunication? customerCommunication;

  ///  The email address of the customer.
  String? customerEmailAddress;

  ///  The name of the customer.
  String? customerName;

  ///  The IP address that the customer used when making the purchase.
  String? customerPurchaseIp;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
  DisputeEvidenceCustomerSignature? customerSignature;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
  DisputeEvidenceDuplicateChargeDocumentation? duplicateChargeDocumentation;

  ///  An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate.
  String? duplicateChargeExplanation;

  ///  The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
  String? duplicateChargeId;

  ///  The enhanced_evidence property
  DisputeEnhancedEvidence? enhancedEvidence;

  ///  A description of the product or service that was sold.
  String? productDescription;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
  DisputeEvidenceReceipt? receipt;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
  DisputeEvidenceRefundPolicy? refundPolicy;

  ///  Documentation demonstrating that the customer was shown your refund policy prior to purchase.
  String? refundPolicyDisclosure;

  ///  A justification for why the customer is not entitled to a refund.
  String? refundRefusalExplanation;

  ///  The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
  String? serviceDate;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
  DisputeEvidenceServiceDocumentation? serviceDocumentation;

  ///  The address to which a physical product was shipped. You should try to include as complete address information as possible.
  String? shippingAddress;

  ///  The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
  String? shippingCarrier;

  ///  The date on which a physical product began its route to the shipping address, in a clear human-readable format.
  String? shippingDate;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
  DisputeEvidenceShippingDocumentation? shippingDocumentation;

  ///  The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
  String? shippingTrackingNumber;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
  DisputeEvidenceUncategorizedFile? uncategorizedFile;

  ///  Any additional evidence or statements.
  String? uncategorizedText;

  /// Instantiates a new [DisputeEvidence] and sets the default values.
  DisputeEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeEvidence createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputeEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['access_activity_log'] =
        (node) => accessActivityLog = node.getStringValue();
    deserializerMap['billing_address'] =
        (node) => billingAddress = node.getStringValue();
    deserializerMap['cancellation_policy'] = (node) => cancellationPolicy =
        node.getObjectValue<DisputeEvidenceCancellationPolicy>(
            DisputeEvidenceCancellationPolicy.createFromDiscriminatorValue);
    deserializerMap['cancellation_policy_disclosure'] =
        (node) => cancellationPolicyDisclosure = node.getStringValue();
    deserializerMap['cancellation_rebuttal'] =
        (node) => cancellationRebuttal = node.getStringValue();
    deserializerMap['customer_communication'] = (node) =>
        customerCommunication = node.getObjectValue<
                DisputeEvidenceCustomerCommunication>(
            DisputeEvidenceCustomerCommunication.createFromDiscriminatorValue);
    deserializerMap['customer_email_address'] =
        (node) => customerEmailAddress = node.getStringValue();
    deserializerMap['customer_name'] =
        (node) => customerName = node.getStringValue();
    deserializerMap['customer_purchase_ip'] =
        (node) => customerPurchaseIp = node.getStringValue();
    deserializerMap['customer_signature'] = (node) => customerSignature =
        node.getObjectValue<DisputeEvidenceCustomerSignature>(
            DisputeEvidenceCustomerSignature.createFromDiscriminatorValue);
    deserializerMap['duplicate_charge_documentation'] = (node) =>
        duplicateChargeDocumentation =
            node.getObjectValue<DisputeEvidenceDuplicateChargeDocumentation>(
                DisputeEvidenceDuplicateChargeDocumentation
                    .createFromDiscriminatorValue);
    deserializerMap['duplicate_charge_explanation'] =
        (node) => duplicateChargeExplanation = node.getStringValue();
    deserializerMap['duplicate_charge_id'] =
        (node) => duplicateChargeId = node.getStringValue();
    deserializerMap['enhanced_evidence'] = (node) => enhancedEvidence =
        node.getObjectValue<DisputeEnhancedEvidence>(
            DisputeEnhancedEvidence.createFromDiscriminatorValue);
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['receipt'] = (node) => receipt =
        node.getObjectValue<DisputeEvidenceReceipt>(
            DisputeEvidenceReceipt.createFromDiscriminatorValue);
    deserializerMap['refund_policy'] = (node) => refundPolicy =
        node.getObjectValue<DisputeEvidenceRefundPolicy>(
            DisputeEvidenceRefundPolicy.createFromDiscriminatorValue);
    deserializerMap['refund_policy_disclosure'] =
        (node) => refundPolicyDisclosure = node.getStringValue();
    deserializerMap['refund_refusal_explanation'] =
        (node) => refundRefusalExplanation = node.getStringValue();
    deserializerMap['service_date'] =
        (node) => serviceDate = node.getStringValue();
    deserializerMap['service_documentation'] = (node) => serviceDocumentation =
        node.getObjectValue<DisputeEvidenceServiceDocumentation>(
            DisputeEvidenceServiceDocumentation.createFromDiscriminatorValue);
    deserializerMap['shipping_address'] =
        (node) => shippingAddress = node.getStringValue();
    deserializerMap['shipping_carrier'] =
        (node) => shippingCarrier = node.getStringValue();
    deserializerMap['shipping_date'] =
        (node) => shippingDate = node.getStringValue();
    deserializerMap['shipping_documentation'] = (node) =>
        shippingDocumentation = node.getObjectValue<
                DisputeEvidenceShippingDocumentation>(
            DisputeEvidenceShippingDocumentation.createFromDiscriminatorValue);
    deserializerMap['shipping_tracking_number'] =
        (node) => shippingTrackingNumber = node.getStringValue();
    deserializerMap['uncategorized_file'] = (node) => uncategorizedFile =
        node.getObjectValue<DisputeEvidenceUncategorizedFile>(
            DisputeEvidenceUncategorizedFile.createFromDiscriminatorValue);
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
    writer.writeObjectValue<DisputeEvidenceCancellationPolicy>(
        'cancellation_policy', cancellationPolicy);
    writer.writeStringValue(
        'cancellation_policy_disclosure', cancellationPolicyDisclosure);
    writer.writeStringValue('cancellation_rebuttal', cancellationRebuttal);
    writer.writeObjectValue<DisputeEvidenceCustomerCommunication>(
        'customer_communication', customerCommunication);
    writer.writeStringValue('customer_email_address', customerEmailAddress);
    writer.writeStringValue('customer_name', customerName);
    writer.writeStringValue('customer_purchase_ip', customerPurchaseIp);
    writer.writeObjectValue<DisputeEvidenceCustomerSignature>(
        'customer_signature', customerSignature);
    writer.writeObjectValue<DisputeEvidenceDuplicateChargeDocumentation>(
        'duplicate_charge_documentation', duplicateChargeDocumentation);
    writer.writeStringValue(
        'duplicate_charge_explanation', duplicateChargeExplanation);
    writer.writeStringValue('duplicate_charge_id', duplicateChargeId);
    writer.writeObjectValue<DisputeEnhancedEvidence>(
        'enhanced_evidence', enhancedEvidence);
    writer.writeStringValue('product_description', productDescription);
    writer.writeObjectValue<DisputeEvidenceReceipt>('receipt', receipt);
    writer.writeObjectValue<DisputeEvidenceRefundPolicy>(
        'refund_policy', refundPolicy);
    writer.writeStringValue('refund_policy_disclosure', refundPolicyDisclosure);
    writer.writeStringValue(
        'refund_refusal_explanation', refundRefusalExplanation);
    writer.writeStringValue('service_date', serviceDate);
    writer.writeObjectValue<DisputeEvidenceServiceDocumentation>(
        'service_documentation', serviceDocumentation);
    writer.writeStringValue('shipping_address', shippingAddress);
    writer.writeStringValue('shipping_carrier', shippingCarrier);
    writer.writeStringValue('shipping_date', shippingDate);
    writer.writeObjectValue<DisputeEvidenceShippingDocumentation>(
        'shipping_documentation', shippingDocumentation);
    writer.writeStringValue('shipping_tracking_number', shippingTrackingNumber);
    writer.writeObjectValue<DisputeEvidenceUncategorizedFile>(
        'uncategorized_file', uncategorizedFile);
    writer.writeStringValue('uncategorized_text', uncategorizedText);
    writer.writeAdditionalData(additionalData);
  }
}
