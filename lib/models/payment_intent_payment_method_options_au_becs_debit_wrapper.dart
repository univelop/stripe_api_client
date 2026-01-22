// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_au_becs_debit.dart';
import './payment_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentPaymentMethodOptionsAuBecsDebit], [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
class PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper implements Parsable {
  ///  Composed type representation for type [PaymentIntentPaymentMethodOptionsAuBecsDebit]
  PaymentIntentPaymentMethodOptionsAuBecsDebit?
      paymentIntentPaymentMethodOptionsAuBecsDebit;

  ///  Composed type representation for type [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
  PaymentIntentTypeSpecificPaymentMethodOptionsClient?
      paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper();
    result.paymentIntentPaymentMethodOptionsAuBecsDebit =
        PaymentIntentPaymentMethodOptionsAuBecsDebit();
    result.paymentIntentTypeSpecificPaymentMethodOptionsClient =
        PaymentIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentPaymentMethodOptionsAuBecsDebit != null) {
      paymentIntentPaymentMethodOptionsAuBecsDebit!
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
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAuBecsDebit>(
        null,
        paymentIntentPaymentMethodOptionsAuBecsDebit,
        [paymentIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
