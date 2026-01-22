// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_au_becs_debit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1], [String?]
class PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit
    implements Parsable {
  ///  Composed type representation for type [PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1]
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1?
      paymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.paymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1 =
          PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1 !=
        null) {
      paymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1!
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
              PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1>(
          null,
          paymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebitMember1);
    }
  }
}
