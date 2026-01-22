// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_payment_method_details_amazon_pay_dispute_type.dart';

/// auto generated
class DisputePaymentMethodDetailsAmazonPay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The AmazonPay dispute type, chargeback or claim
  DisputePaymentMethodDetailsAmazonPayDisputeType? disputeType;

  /// Instantiates a new [DisputePaymentMethodDetailsAmazonPay] and sets the default values.
  DisputePaymentMethodDetailsAmazonPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePaymentMethodDetailsAmazonPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputePaymentMethodDetailsAmazonPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dispute_type'] = (node) => disputeType =
        node.getEnumValue<DisputePaymentMethodDetailsAmazonPayDisputeType>(
            (stringValue) => DisputePaymentMethodDetailsAmazonPayDisputeType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<DisputePaymentMethodDetailsAmazonPayDisputeType>(
        'dispute_type', disputeType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
