// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './process_payment_intent_post_request_body_process_config.dart';

/// auto generated
class ProcessPaymentIntentPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The ID of the PaymentIntent to process on the reader.
  String? paymentIntent;

  ///  Configuration overrides for this transaction, such as tipping and customer cancellation settings.
  ProcessPaymentIntentPostRequestBodyProcessConfig? processConfig;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ProcessPaymentIntentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ProcessPaymentIntentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['process_config'] = (node) => processConfig =
        node.getObjectValue<ProcessPaymentIntentPostRequestBodyProcessConfig>(
            ProcessPaymentIntentPostRequestBodyProcessConfig
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeObjectValue<ProcessPaymentIntentPostRequestBodyProcessConfig>(
        'process_config', processConfig);
  }
}
