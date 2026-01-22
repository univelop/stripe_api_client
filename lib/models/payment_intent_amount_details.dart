// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_amount_details.dart';
import './payment_flows_amount_details_client.dart';

/// auto generated
/// Composed type wrapper for classes [PaymentFlowsAmountDetailsClient], [PaymentFlowsAmountDetails]
class PaymentIntentAmountDetails implements Parsable {
  ///  Composed type representation for type [PaymentFlowsAmountDetails]
  PaymentFlowsAmountDetails? paymentFlowsAmountDetails;

  ///  Composed type representation for type [PaymentFlowsAmountDetailsClient]
  PaymentFlowsAmountDetailsClient? paymentFlowsAmountDetailsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentAmountDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PaymentIntentAmountDetails();
    result.paymentFlowsAmountDetails = PaymentFlowsAmountDetails();
    result.paymentFlowsAmountDetailsClient = PaymentFlowsAmountDetailsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (paymentFlowsAmountDetails != null) {
      paymentFlowsAmountDetails!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (paymentFlowsAmountDetailsClient != null) {
      paymentFlowsAmountDetailsClient!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentFlowsAmountDetails>(
        null, paymentFlowsAmountDetails, [paymentFlowsAmountDetailsClient]);
  }
}
