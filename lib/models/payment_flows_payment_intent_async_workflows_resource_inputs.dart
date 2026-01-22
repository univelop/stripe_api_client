// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_payment_intent_async_workflows_resource_inputs_resource_tax.dart';

/// auto generated
class PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tax property
  PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax? tax;

  /// Instantiates a new [PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs] and sets the default values.
  PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputs();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax>(
        PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentFlowsPaymentIntentAsyncWorkflowsResourceInputsResourceTax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
