// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './process_setup_intent_post_request_body_allow_redisplay.dart';
import './process_setup_intent_post_request_body_process_config.dart';

/// auto generated
class ProcessSetupIntentPostRequestBody implements Parsable {
  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
  ProcessSetupIntentPostRequestBodyAllowRedisplay? allowRedisplay;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Configuration overrides for this setup, such as MOTO and customer cancellation settings.
  ProcessSetupIntentPostRequestBodyProcessConfig? processConfig;

  ///  The ID of the SetupIntent to process on the reader.
  String? setupIntent;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ProcessSetupIntentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ProcessSetupIntentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<ProcessSetupIntentPostRequestBodyAllowRedisplay>(
            (stringValue) => ProcessSetupIntentPostRequestBodyAllowRedisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['process_config'] = (node) => processConfig =
        node.getObjectValue<ProcessSetupIntentPostRequestBodyProcessConfig>(
            ProcessSetupIntentPostRequestBodyProcessConfig
                .createFromDiscriminatorValue);
    deserializerMap['setup_intent'] =
        (node) => setupIntent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<ProcessSetupIntentPostRequestBodyAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ProcessSetupIntentPostRequestBodyProcessConfig>(
        'process_config', processConfig);
    writer.writeStringValue('setup_intent', setupIntent);
  }
}
