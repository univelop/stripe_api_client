// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_naver_pay_payment_method_options.dart';
import './payment_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions], [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
class PaymentIntentPaymentMethodOptionsNaverPay implements Parsable {
  ///  Composed type representation for type [PaymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions]
  PaymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions?
      paymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions;

  ///  Composed type representation for type [PaymentIntentTypeSpecificPaymentMethodOptionsClient]
  PaymentIntentTypeSpecificPaymentMethodOptionsClient?
      paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsNaverPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PaymentIntentPaymentMethodOptionsNaverPay();
    result.paymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions =
        PaymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions();
    result.paymentIntentTypeSpecificPaymentMethodOptionsClient =
        PaymentIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions != null) {
      paymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions!
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
            PaymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions>(
        null,
        paymentFlowsPrivatePaymentMethodsNaverPayPaymentMethodOptions,
        [paymentIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
