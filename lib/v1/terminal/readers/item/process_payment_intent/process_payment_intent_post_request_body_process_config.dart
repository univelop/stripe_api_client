// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './process_payment_intent_post_request_body_process_config_allow_redisplay.dart';
import './process_payment_intent_post_request_body_process_config_tipping.dart';

/// auto generated
/// Configuration overrides for this transaction, such as tipping and customer cancellation settings.
class ProcessPaymentIntentPostRequestBodyProcessConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allow_redisplay property
  ProcessPaymentIntentPostRequestBodyProcessConfigAllowRedisplay?
      allowRedisplay;

  ///  The enable_customer_cancellation property
  bool? enableCustomerCancellation;

  ///  The return_url property
  String? returnUrl;

  ///  The skip_tipping property
  bool? skipTipping;

  ///  The tipping property
  ProcessPaymentIntentPostRequestBodyProcessConfigTipping? tipping;

  /// Instantiates a new [ProcessPaymentIntentPostRequestBodyProcessConfig] and sets the default values.
  ProcessPaymentIntentPostRequestBodyProcessConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ProcessPaymentIntentPostRequestBodyProcessConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ProcessPaymentIntentPostRequestBodyProcessConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<
                ProcessPaymentIntentPostRequestBodyProcessConfigAllowRedisplay>(
            (stringValue) =>
                ProcessPaymentIntentPostRequestBodyProcessConfigAllowRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['enable_customer_cancellation'] =
        (node) => enableCustomerCancellation = node.getBoolValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['skip_tipping'] =
        (node) => skipTipping = node.getBoolValue();
    deserializerMap['tipping'] = (node) => tipping = node.getObjectValue<
            ProcessPaymentIntentPostRequestBodyProcessConfigTipping>(
        ProcessPaymentIntentPostRequestBodyProcessConfigTipping
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ProcessPaymentIntentPostRequestBodyProcessConfigAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeBoolValue('enable_customer_cancellation',
        value: enableCustomerCancellation);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeBoolValue('skip_tipping', value: skipTipping);
    writer.writeObjectValue<
            ProcessPaymentIntentPostRequestBodyProcessConfigTipping>(
        'tipping', tipping);
    writer.writeAdditionalData(additionalData);
  }
}
