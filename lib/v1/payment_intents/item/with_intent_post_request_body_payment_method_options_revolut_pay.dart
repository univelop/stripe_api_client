// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_revolut_pay_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1]
class WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1]
  WithIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1?
      withIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1 =
          WithIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1 !=
        null) {
      withIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1!
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
              WithIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1>(
          null, withIntentPostRequestBodyPaymentMethodOptionsRevolutPayMember1);
    }
  }
}
