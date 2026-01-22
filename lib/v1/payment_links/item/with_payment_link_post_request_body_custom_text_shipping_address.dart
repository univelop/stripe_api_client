// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_custom_text_shipping_address_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPaymentLinkPostRequestBodyCustomTextShippingAddressMember1]
class WithPaymentLinkPostRequestBodyCustomTextShippingAddress
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPaymentLinkPostRequestBodyCustomTextShippingAddressMember1]
  WithPaymentLinkPostRequestBodyCustomTextShippingAddressMember1?
      withPaymentLinkPostRequestBodyCustomTextShippingAddressMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyCustomTextShippingAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithPaymentLinkPostRequestBodyCustomTextShippingAddress();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPaymentLinkPostRequestBodyCustomTextShippingAddressMember1 =
          WithPaymentLinkPostRequestBodyCustomTextShippingAddressMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPaymentLinkPostRequestBodyCustomTextShippingAddressMember1 !=
        null) {
      withPaymentLinkPostRequestBodyCustomTextShippingAddressMember1!
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
              WithPaymentLinkPostRequestBodyCustomTextShippingAddressMember1>(
          null, withPaymentLinkPostRequestBodyCustomTextShippingAddressMember1);
    }
  }
}
