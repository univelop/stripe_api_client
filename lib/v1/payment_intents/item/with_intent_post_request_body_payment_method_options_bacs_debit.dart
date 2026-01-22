// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_bacs_debit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1]
class WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1]
  WithIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1?
      withIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1 =
          WithIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1 != null) {
      withIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1!
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
              WithIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1>(
          null, withIntentPostRequestBodyPaymentMethodOptionsBacsDebitMember1);
    }
  }
}
