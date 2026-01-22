// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_customer_account_id.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_customer_device_fingerprint.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_customer_device_id.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_customer_email_address.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_customer_purchase_ip.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_product_description.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_prior_undisputed_transactions_shipping_address.dart';

/// auto generated
class DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The charge property
  String? charge;

  ///  The customer_account_id property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountId?
      customerAccountId;

  ///  The customer_device_fingerprint property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint?
      customerDeviceFingerprint;

  ///  The customer_device_id property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceId?
      customerDeviceId;

  ///  The customer_email_address property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddress?
      customerEmailAddress;

  ///  The customer_purchase_ip property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp?
      customerPurchaseIp;

  ///  The product_description property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsProductDescription?
      productDescription;

  ///  The shipping_address property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress?
      shippingAddress;

  /// Instantiates a new [DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions] and sets the default values.
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['charge'] = (node) => charge = node.getStringValue();
    deserializerMap[
        'customer_account_id'] = (node) => customerAccountId = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountId>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountId
            .createFromDiscriminatorValue);
    deserializerMap['customer_device_fingerprint'] = (node) =>
        customerDeviceFingerprint = node.getObjectValue<
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint>(
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint
                .createFromDiscriminatorValue);
    deserializerMap[
        'customer_device_id'] = (node) => customerDeviceId = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceId>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceId
            .createFromDiscriminatorValue);
    deserializerMap['customer_email_address'] = (node) => customerEmailAddress =
        node.getObjectValue<
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddress>(
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddress
                .createFromDiscriminatorValue);
    deserializerMap[
        'customer_purchase_ip'] = (node) => customerPurchaseIp = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp
            .createFromDiscriminatorValue);
    deserializerMap[
        'product_description'] = (node) => productDescription = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsProductDescription>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsProductDescription
            .createFromDiscriminatorValue);
    deserializerMap[
        'shipping_address'] = (node) => shippingAddress = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('charge', charge);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountId>(
        'customer_account_id', customerAccountId);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint>(
        'customer_device_fingerprint', customerDeviceFingerprint);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceId>(
        'customer_device_id', customerDeviceId);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddress>(
        'customer_email_address', customerEmailAddress);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp>(
        'customer_purchase_ip', customerPurchaseIp);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsProductDescription>(
        'product_description', productDescription);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress>(
        'shipping_address', shippingAddress);
    writer.writeAdditionalData(additionalData);
  }
}
