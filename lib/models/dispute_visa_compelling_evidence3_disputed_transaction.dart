// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_transaction_shipping_address.dart';
import './dispute_visa_compelling_evidence3_disputed_transaction_merchandise_or_services.dart';

/// auto generated
class DisputeVisaCompellingEvidence3DisputedTransaction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  User Account ID used to log into business platform. Must be recognizable by the user.
  String? customerAccountId;

  ///  Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
  String? customerDeviceFingerprint;

  ///  Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
  String? customerDeviceId;

  ///  The email address of the customer.
  String? customerEmailAddress;

  ///  The IP address that the customer used when making the purchase.
  String? customerPurchaseIp;

  ///  Categorization of disputed payment.
  DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices?
      merchandiseOrServices;

  ///  A description of the product or service that was sold.
  String? productDescription;

  ///  The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
  DisputeTransactionShippingAddress? shippingAddress;

  /// Instantiates a new [DisputeVisaCompellingEvidence3DisputedTransaction] and sets the default values.
  DisputeVisaCompellingEvidence3DisputedTransaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeVisaCompellingEvidence3DisputedTransaction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputeVisaCompellingEvidence3DisputedTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_account_id'] =
        (node) => customerAccountId = node.getStringValue();
    deserializerMap['customer_device_fingerprint'] =
        (node) => customerDeviceFingerprint = node.getStringValue();
    deserializerMap['customer_device_id'] =
        (node) => customerDeviceId = node.getStringValue();
    deserializerMap['customer_email_address'] =
        (node) => customerEmailAddress = node.getStringValue();
    deserializerMap['customer_purchase_ip'] =
        (node) => customerPurchaseIp = node.getStringValue();
    deserializerMap['merchandise_or_services'] = (node) =>
        merchandiseOrServices = node.getEnumValue<
                DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices>(
            (stringValue) =>
                DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['shipping_address'] = (node) => shippingAddress =
        node.getObjectValue<DisputeTransactionShippingAddress>(
            DisputeTransactionShippingAddress.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('customer_account_id', customerAccountId);
    writer.writeStringValue(
        'customer_device_fingerprint', customerDeviceFingerprint);
    writer.writeStringValue('customer_device_id', customerDeviceId);
    writer.writeStringValue('customer_email_address', customerEmailAddress);
    writer.writeStringValue('customer_purchase_ip', customerPurchaseIp);
    writer.writeEnumValue<
            DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices>(
        'merchandise_or_services', merchandiseOrServices, (e) => e?.value);
    writer.writeStringValue('product_description', productDescription);
    writer.writeObjectValue<DisputeTransactionShippingAddress>(
        'shipping_address', shippingAddress);
    writer.writeAdditionalData(additionalData);
  }
}
