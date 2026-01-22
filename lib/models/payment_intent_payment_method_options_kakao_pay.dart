// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_kakao_pay_payment_method_options.dart';
import './payment_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions], [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
class PaymentIntentPaymentMethodOptionsKakaoPay implements Parsable {
  ///  Composed type representation for type [PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions]
  PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions?
      paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions;

  ///  Composed type representation for type [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
  PaymentIntentTypeSpecificPaymentMethodOptionsClient?
      paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsKakaoPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PaymentIntentPaymentMethodOptionsKakaoPay();
    result.paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions =
        PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions();
    result.paymentIntentTypeSpecificPaymentMethodOptionsClient =
        PaymentIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions != null) {
      paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions!
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
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions>(
        null,
        paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions,
        [paymentIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
