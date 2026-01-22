// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_bacs_debit.dart';
import './payment_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentPaymentMethodOptionsBacsDebit], [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
class PaymentIntentPaymentMethodOptionsBacsDebitWrapper implements Parsable {
  ///  Composed type representation for type [PaymentIntentPaymentMethodOptionsBacsDebit]
  PaymentIntentPaymentMethodOptionsBacsDebit?
      paymentIntentPaymentMethodOptionsBacsDebit;

  ///  Composed type representation for type [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
  PaymentIntentTypeSpecificPaymentMethodOptionsClient?
      paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsBacsDebitWrapper
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentPaymentMethodOptionsBacsDebitWrapper();
    result.paymentIntentPaymentMethodOptionsBacsDebit =
        PaymentIntentPaymentMethodOptionsBacsDebit();
    result.paymentIntentTypeSpecificPaymentMethodOptionsClient =
        PaymentIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentPaymentMethodOptionsBacsDebit != null) {
      paymentIntentPaymentMethodOptionsBacsDebit!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (paymentIntentTypeSpecificPaymentMethodOptionsClient != null) {
      paymentIntentTypeSpecificPaymentMethodOptionsClient!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsBacsDebit>(
        null,
        paymentIntentPaymentMethodOptionsBacsDebit,
        [paymentIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
