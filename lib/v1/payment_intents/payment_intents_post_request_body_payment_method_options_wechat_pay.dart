// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_wechat_pay_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1], [String?]
class PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay
    implements Parsable {
  ///  Composed type representation for type [PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1]
  PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1?
      paymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1 =
          PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1 !=
        null) {
      paymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1!
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
              PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1>(
          null,
          paymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1);
    }
  }
}
