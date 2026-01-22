// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1]
class WithIntentPostRequestBodyPaymentMethodOptionsPayto implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1]
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1?
      withIntentPostRequestBodyPaymentMethodOptionsPaytoMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithIntentPostRequestBodyPaymentMethodOptionsPayto();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withIntentPostRequestBodyPaymentMethodOptionsPaytoMember1 =
          WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withIntentPostRequestBodyPaymentMethodOptionsPaytoMember1 != null) {
      withIntentPostRequestBodyPaymentMethodOptionsPaytoMember1!
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
              WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1>(
          null, withIntentPostRequestBodyPaymentMethodOptionsPaytoMember1);
    }
  }
}
