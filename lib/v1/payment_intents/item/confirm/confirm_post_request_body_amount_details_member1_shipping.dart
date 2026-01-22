// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_amount_details_member1_shipping_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyAmountDetailsMember1ShippingMember1], [String?]
class ConfirmPostRequestBodyAmountDetailsMember1Shipping implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyAmountDetailsMember1ShippingMember1]
  ConfirmPostRequestBodyAmountDetailsMember1ShippingMember1?
      confirmPostRequestBodyAmountDetailsMember1ShippingMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyAmountDetailsMember1Shipping
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyAmountDetailsMember1Shipping();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyAmountDetailsMember1ShippingMember1 =
          ConfirmPostRequestBodyAmountDetailsMember1ShippingMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyAmountDetailsMember1ShippingMember1 != null) {
      confirmPostRequestBodyAmountDetailsMember1ShippingMember1!
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
      writer.writeObjectValue<
              ConfirmPostRequestBodyAmountDetailsMember1ShippingMember1>(
          null, confirmPostRequestBodyAmountDetailsMember1ShippingMember1);
    }
  }
}
