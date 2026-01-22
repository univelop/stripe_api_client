// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_kr_card_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithIntentPostRequestBodyPaymentMethodOptionsKrCardMember1]
class WithIntentPostRequestBodyPaymentMethodOptionsKrCard implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithIntentPostRequestBodyPaymentMethodOptionsKrCardMember1]
  WithIntentPostRequestBodyPaymentMethodOptionsKrCardMember1?
      withIntentPostRequestBodyPaymentMethodOptionsKrCardMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsKrCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithIntentPostRequestBodyPaymentMethodOptionsKrCard();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withIntentPostRequestBodyPaymentMethodOptionsKrCardMember1 =
          WithIntentPostRequestBodyPaymentMethodOptionsKrCardMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withIntentPostRequestBodyPaymentMethodOptionsKrCardMember1 != null) {
      withIntentPostRequestBodyPaymentMethodOptionsKrCardMember1!
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
              WithIntentPostRequestBodyPaymentMethodOptionsKrCardMember1>(
          null, withIntentPostRequestBodyPaymentMethodOptionsKrCardMember1);
    }
  }
}
