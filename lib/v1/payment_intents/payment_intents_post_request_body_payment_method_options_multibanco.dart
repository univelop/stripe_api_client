// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_multibanco_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1], [String?]
class PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco
    implements Parsable {
  ///  Composed type representation for type [PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1]
  PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1?
      paymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1 =
          PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1 !=
        null) {
      paymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1!
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
              PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1>(
          null,
          paymentIntentsPostRequestBodyPaymentMethodOptionsMultibancoMember1);
    }
  }
}
