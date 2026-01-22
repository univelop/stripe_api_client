// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_mobilepay.dart';
import './payment_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentPaymentMethodOptionsMobilepay], [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
class PaymentIntentPaymentMethodOptionsMobilepayWrapper implements Parsable {
  ///  Composed type representation for type [PaymentIntentPaymentMethodOptionsMobilepay]
  PaymentIntentPaymentMethodOptionsMobilepay?
      paymentIntentPaymentMethodOptionsMobilepay;

  ///  Composed type representation for type [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
  PaymentIntentTypeSpecificPaymentMethodOptionsClient?
      paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsMobilepayWrapper
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentPaymentMethodOptionsMobilepayWrapper();
    result.paymentIntentPaymentMethodOptionsMobilepay =
        PaymentIntentPaymentMethodOptionsMobilepay();
    result.paymentIntentTypeSpecificPaymentMethodOptionsClient =
        PaymentIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentPaymentMethodOptionsMobilepay != null) {
      paymentIntentPaymentMethodOptionsMobilepay!
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
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsMobilepay>(
        null,
        paymentIntentPaymentMethodOptionsMobilepay,
        [paymentIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
