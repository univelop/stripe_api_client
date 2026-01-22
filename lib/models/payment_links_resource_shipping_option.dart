// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_shipping_option_shipping_rate.dart';

/// auto generated
class PaymentLinksResourceShippingOption
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A non-negative integer in cents representing how much to charge.
  int? shippingAmount;

  ///  The ID of the Shipping Rate to use for this shipping option.
  PaymentLinksResourceShippingOptionShippingRate? shippingRate;

  /// Instantiates a new [PaymentLinksResourceShippingOption] and sets the default values.
  PaymentLinksResourceShippingOption() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceShippingOption createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceShippingOption();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['shipping_amount'] =
        (node) => shippingAmount = node.getIntValue();
    deserializerMap['shipping_rate'] = (node) => shippingRate =
        node.getObjectValue<PaymentLinksResourceShippingOptionShippingRate>(
            PaymentLinksResourceShippingOptionShippingRate
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('shipping_amount', shippingAmount);
    writer.writeObjectValue<PaymentLinksResourceShippingOptionShippingRate>(
        'shipping_rate', shippingRate);
    writer.writeAdditionalData(additionalData);
  }
}
