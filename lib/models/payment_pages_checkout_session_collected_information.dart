// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_checkout_address_details.dart';

/// auto generated
class PaymentPagesCheckoutSessionCollectedInformation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Customer’s business name for this Checkout Session
  String? businessName;

  ///  Customer’s individual name for this Checkout Session
  String? individualName;

  ///  Shipping information for this Checkout Session.
  PaymentPagesCheckoutSessionCheckoutAddressDetails? shippingDetails;

  /// Instantiates a new [PaymentPagesCheckoutSessionCollectedInformation] and sets the default values.
  PaymentPagesCheckoutSessionCollectedInformation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCollectedInformation
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCollectedInformation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business_name'] =
        (node) => businessName = node.getStringValue();
    deserializerMap['individual_name'] =
        (node) => individualName = node.getStringValue();
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<PaymentPagesCheckoutSessionCheckoutAddressDetails>(
            PaymentPagesCheckoutSessionCheckoutAddressDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('business_name', businessName);
    writer.writeStringValue('individual_name', individualName);
    writer.writeObjectValue<PaymentPagesCheckoutSessionCheckoutAddressDetails>(
        'shipping_details', shippingDetails);
    writer.writeAdditionalData(additionalData);
  }
}
