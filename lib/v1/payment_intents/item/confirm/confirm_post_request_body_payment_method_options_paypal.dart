// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_paypal_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1], [String?]
class ConfirmPostRequestBodyPaymentMethodOptionsPaypal implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1]
  ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1?
      confirmPostRequestBodyPaymentMethodOptionsPaypalMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsPaypal
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyPaymentMethodOptionsPaypal();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyPaymentMethodOptionsPaypalMember1 =
          ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyPaymentMethodOptionsPaypalMember1 != null) {
      confirmPostRequestBodyPaymentMethodOptionsPaypalMember1!
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
              ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1>(
          null, confirmPostRequestBodyPaymentMethodOptionsPaypalMember1);
    }
  }
}
