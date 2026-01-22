// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_kr_card_brand.dart';

/// auto generated
class PaymentMethodKrCard implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The local credit or debit card brand.
  PaymentMethodKrCardBrand? brand;

  ///  The last four digits of the card. This may not be present for American Express cards.
  String? last4;

  /// Instantiates a new [PaymentMethodKrCard] and sets the default values.
  PaymentMethodKrCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodKrCard createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodKrCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand =
        node.getEnumValue<PaymentMethodKrCardBrand>((stringValue) =>
            PaymentMethodKrCardBrand.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodKrCardBrand>(
        'brand', brand, (e) => e?.value);
    writer.writeStringValue('last4', last4);
    writer.writeAdditionalData(additionalData);
  }
}
