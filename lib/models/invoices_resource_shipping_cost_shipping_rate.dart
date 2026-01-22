// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rate.dart';

/// auto generated
/// Composed type wrapper for classes [ShippingRate], [String?]
class InvoicesResourceShippingCostShippingRate implements Parsable {
  ///  Composed type representation for type [ShippingRate]
  ShippingRate? shippingRate;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesResourceShippingCostShippingRate createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = InvoicesResourceShippingCostShippingRate();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.shippingRate = ShippingRate();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (shippingRate != null) {
      shippingRate!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<ShippingRate>(null, shippingRate);
    }
  }
}
