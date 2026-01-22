// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_customer_account_id.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_customer_device_fingerprint.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_customer_device_id.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_customer_email_address.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_customer_purchase_ip.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_merchandise_or_services.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_product_description.dart';
import './dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address.dart';

/// auto generated
class DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_account_id property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerAccountId?
      customerAccountId;

  ///  The customer_device_fingerprint property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprint?
      customerDeviceFingerprint;

  ///  The customer_device_id property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceId?
      customerDeviceId;

  ///  The customer_email_address property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerEmailAddress?
      customerEmailAddress;

  ///  The customer_purchase_ip property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp?
      customerPurchaseIp;

  ///  The merchandise_or_services property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices?
      merchandiseOrServices;

  ///  The product_description property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionProductDescription?
      productDescription;

  ///  The shipping_address property
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress?
      shippingAddress;

  /// Instantiates a new [DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction] and sets the default values.
  DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'customer_account_id'] = (node) => customerAccountId = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerAccountId>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerAccountId
            .createFromDiscriminatorValue);
    deserializerMap['customer_device_fingerprint'] = (node) =>
        customerDeviceFingerprint = node.getObjectValue<
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprint>(
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprint
                .createFromDiscriminatorValue);
    deserializerMap[
        'customer_device_id'] = (node) => customerDeviceId = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceId>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceId
            .createFromDiscriminatorValue);
    deserializerMap['customer_email_address'] = (node) => customerEmailAddress =
        node.getObjectValue<
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerEmailAddress>(
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerEmailAddress
                .createFromDiscriminatorValue);
    deserializerMap[
        'customer_purchase_ip'] = (node) => customerPurchaseIp = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp
            .createFromDiscriminatorValue);
    deserializerMap['merchandise_or_services'] = (node) =>
        merchandiseOrServices = node.getEnumValue<
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices>(
            (stringValue) =>
                DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'product_description'] = (node) => productDescription = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionProductDescription>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionProductDescription
            .createFromDiscriminatorValue);
    deserializerMap[
        'shipping_address'] = (node) => shippingAddress = node.getObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress>(
        DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerAccountId>(
        'customer_account_id', customerAccountId);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprint>(
        'customer_device_fingerprint', customerDeviceFingerprint);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerDeviceId>(
        'customer_device_id', customerDeviceId);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerEmailAddress>(
        'customer_email_address', customerEmailAddress);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp>(
        'customer_purchase_ip', customerPurchaseIp);
    writer.writeEnumValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices>(
        'merchandise_or_services', merchandiseOrServices, (e) => e?.value);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionProductDescription>(
        'product_description', productDescription);
    writer.writeObjectValue<
            DisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress>(
        'shipping_address', shippingAddress);
    writer.writeAdditionalData(additionalData);
  }
}
