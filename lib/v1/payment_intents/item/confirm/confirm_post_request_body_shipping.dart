// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_shipping_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyShippingMember1], [String?]
class ConfirmPostRequestBodyShipping implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyShippingMember1]
  ConfirmPostRequestBodyShippingMember1? confirmPostRequestBodyShippingMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyShipping createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = ConfirmPostRequestBodyShipping();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyShippingMember1 =
          ConfirmPostRequestBodyShippingMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyShippingMember1 != null) {
      confirmPostRequestBodyShippingMember1!
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
      writer.writeObjectValue<ConfirmPostRequestBodyShippingMember1>(
          null, confirmPostRequestBodyShippingMember1);
    }
  }
}
