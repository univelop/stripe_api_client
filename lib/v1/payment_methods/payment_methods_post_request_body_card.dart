// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_methods_post_request_body_card_member1.dart';
import './payment_methods_post_request_body_card_member2.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentMethodsPostRequestBodyCardMember1], [PaymentMethodsPostRequestBodyCardMember2]
class PaymentMethodsPostRequestBodyCard implements Parsable {
  ///  Composed type representation for type [PaymentMethodsPostRequestBodyCardMember1]
  PaymentMethodsPostRequestBodyCardMember1?
      paymentMethodsPostRequestBodyCardMember1;

  ///  Composed type representation for type [PaymentMethodsPostRequestBodyCardMember2]
  PaymentMethodsPostRequestBodyCardMember2?
      paymentMethodsPostRequestBodyCardMember2;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PaymentMethodsPostRequestBodyCard();
    result.paymentMethodsPostRequestBodyCardMember1 =
        PaymentMethodsPostRequestBodyCardMember1();
    result.paymentMethodsPostRequestBodyCardMember2 =
        PaymentMethodsPostRequestBodyCardMember2();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentMethodsPostRequestBodyCardMember1 != null) {
      paymentMethodsPostRequestBodyCardMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (paymentMethodsPostRequestBodyCardMember2 != null) {
      paymentMethodsPostRequestBodyCardMember2!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodsPostRequestBodyCardMember1>(
        null,
        paymentMethodsPostRequestBodyCardMember1,
        [paymentMethodsPostRequestBodyCardMember2]);
  }
}
