// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './paypal_seller_protection_dispute_categories.dart';
import './paypal_seller_protection_status.dart';

/// auto generated
class PaypalSellerProtection implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An array of conditions that are covered for the transaction, if applicable.
  Iterable<PaypalSellerProtectionDisputeCategories>? disputeCategories;

  ///  Indicates whether the transaction is eligible for PayPal's seller protection.
  PaypalSellerProtectionStatus? status;

  /// Instantiates a new [PaypalSellerProtection] and sets the default values.
  PaypalSellerProtection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaypalSellerProtection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaypalSellerProtection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dispute_categories'] = (node) => disputeCategories =
        node.getCollectionOfEnumValues<PaypalSellerProtectionDisputeCategories>(
            (stringValue) => PaypalSellerProtectionDisputeCategories.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<PaypalSellerProtectionStatus>((stringValue) =>
            PaypalSellerProtectionStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<PaypalSellerProtectionDisputeCategories>(
        'dispute_categories', disputeCategories, (e) => e?.value);
    writer.writeEnumValue<PaypalSellerProtectionStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
