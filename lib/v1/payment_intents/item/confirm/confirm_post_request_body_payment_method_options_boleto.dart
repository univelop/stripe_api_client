// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_boleto_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodOptionsBoletoMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsBoleto implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodOptionsBoletoMember1]
  ConfirmPostRequestBodyPaymentMethodOptionsBoletoMember1?
      confirmPostRequestBodyPaymentMethodOptionsBoletoMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsBoleto
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyPaymentMethodOptionsBoleto();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodOptionsBoletoMember1 =
          ConfirmPostRequestBodyPaymentMethodOptionsBoletoMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodOptionsBoletoMember1 != null) {
      confirmPostRequestBodyPaymentMethodOptionsBoletoMember1!
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
              ConfirmPostRequestBodyPaymentMethodOptionsBoletoMember1>(
          null, confirmPostRequestBodyPaymentMethodOptionsBoletoMember1);
    }
  }
}
