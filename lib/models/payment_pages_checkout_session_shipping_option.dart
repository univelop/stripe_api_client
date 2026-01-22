// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_shipping_option_shipping_rate.dart';

/// auto generated
class PaymentPagesCheckoutSessionShippingOption
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A non-negative integer in cents representing how much to charge.
  int? shippingAmount;

  ///  The shipping rate.
  PaymentPagesCheckoutSessionShippingOptionShippingRate? shippingRate;

  /// Instantiates a new [PaymentPagesCheckoutSessionShippingOption] and sets the default values.
  PaymentPagesCheckoutSessionShippingOption() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionShippingOption createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionShippingOption();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['shipping_amount'] =
        (node) => shippingAmount = node.getIntValue();
    deserializerMap['shipping_rate'] = (node) => shippingRate = node
        .getObjectValue<PaymentPagesCheckoutSessionShippingOptionShippingRate>(
            PaymentPagesCheckoutSessionShippingOptionShippingRate
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('shipping_amount', shippingAmount);
    writer.writeObjectValue<
            PaymentPagesCheckoutSessionShippingOptionShippingRate>(
        'shipping_rate', shippingRate);
    writer.writeAdditionalData(additionalData);
  }
}
