// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_type_specific_payment_method_options_client.dart';
import './payment_method_options_mb_way.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentIntentTypeSpecificPaymentMethodOptionsClient], [PaymentMethodOptionsMbWay]
class PaymentIntentPaymentMethodOptionsMbWay implements Parsable {
  ///  Composed type representation for type [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
  PaymentIntentTypeSpecificPaymentMethodOptionsClient?
      paymentIntentTypeSpecificPaymentMethodOptionsClient;

  ///  Composed type representation for type [PaymentMethodOptionsMbWay]
  PaymentMethodOptionsMbWay? paymentMethodOptionsMbWay;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsMbWay createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PaymentIntentPaymentMethodOptionsMbWay();
    result.paymentIntentTypeSpecificPaymentMethodOptionsClient =
        PaymentIntentTypeSpecificPaymentMethodOptionsClient();
    result.paymentMethodOptionsMbWay = PaymentMethodOptionsMbWay();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentIntentTypeSpecificPaymentMethodOptionsClient != null) {
      paymentIntentTypeSpecificPaymentMethodOptionsClient!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (paymentMethodOptionsMbWay != null) {
      paymentMethodOptionsMbWay!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(
            null,
            paymentIntentTypeSpecificPaymentMethodOptionsClient,
            [paymentMethodOptionsMbWay]);
  }
}
