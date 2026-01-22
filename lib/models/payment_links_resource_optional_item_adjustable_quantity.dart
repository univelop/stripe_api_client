// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentLinksResourceOptionalItemAdjustableQuantity
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Set to true if the quantity can be adjusted to any non-negative integer.
  bool? enabled;

  ///  The maximum quantity of this item the customer can purchase. By default this value is 99.
  int? maximum;

  ///  The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
  int? minimum;

  /// Instantiates a new [PaymentLinksResourceOptionalItemAdjustableQuantity] and sets the default values.
  PaymentLinksResourceOptionalItemAdjustableQuantity() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceOptionalItemAdjustableQuantity
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksResourceOptionalItemAdjustableQuantity();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['maximum'] = (node) => maximum = node.getIntValue();
    deserializerMap['minimum'] = (node) => minimum = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeIntValue('maximum', maximum);
    writer.writeIntValue('minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
