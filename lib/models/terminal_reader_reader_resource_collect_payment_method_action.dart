// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method.dart';
import './terminal_reader_reader_resource_collect_config.dart';
import './terminal_reader_reader_resource_collect_payment_method_action_payment_intent.dart';

/// auto generated
/// Represents a reader action to collect a payment method
class TerminalReaderReaderResourceCollectPaymentMethodAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Represents a per-transaction override of a reader configuration
  TerminalReaderReaderResourceCollectConfig? collectConfig;

  ///  Most recent PaymentIntent processed by the reader.
  TerminalReaderReaderResourceCollectPaymentMethodActionPaymentIntent?
      paymentIntent;

  ///  PaymentMethod objects represent your customer's payment instruments.You can use them with [PaymentIntents](https://docs.stripe.com/payments/payment-intents) to collect payments or save them toCustomer objects to store instrument details for future payments.Related guides: [Payment Methods](https://docs.stripe.com/payments/payment-methods) and [More Payment Scenarios](https://docs.stripe.com/payments/more-payment-scenarios).
  PaymentMethod? paymentMethod;

  /// Instantiates a new [TerminalReaderReaderResourceCollectPaymentMethodAction] and sets the default values.
  TerminalReaderReaderResourceCollectPaymentMethodAction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceCollectPaymentMethodAction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceCollectPaymentMethodAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['collect_config'] = (node) => collectConfig =
        node.getObjectValue<TerminalReaderReaderResourceCollectConfig>(
            TerminalReaderReaderResourceCollectConfig
                .createFromDiscriminatorValue);
    deserializerMap[
        'payment_intent'] = (node) => paymentIntent = node.getObjectValue<
            TerminalReaderReaderResourceCollectPaymentMethodActionPaymentIntent>(
        TerminalReaderReaderResourceCollectPaymentMethodActionPaymentIntent
            .createFromDiscriminatorValue);
    deserializerMap['payment_method'] = (node) => paymentMethod =
        node.getObjectValue<PaymentMethod>(
            PaymentMethod.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalReaderReaderResourceCollectConfig>(
        'collect_config', collectConfig);
    writer.writeObjectValue<
            TerminalReaderReaderResourceCollectPaymentMethodActionPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeObjectValue<PaymentMethod>('payment_method', paymentMethod);
    writer.writeAdditionalData(additionalData);
  }
}
