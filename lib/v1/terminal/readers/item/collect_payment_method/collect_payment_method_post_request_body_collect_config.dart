// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './collect_payment_method_post_request_body_collect_config_allow_redisplay.dart';
import './collect_payment_method_post_request_body_collect_config_tipping.dart';

/// auto generated
/// Configuration overrides for this collection, such as tipping, surcharging, and customer cancellation settings.
class CollectPaymentMethodPostRequestBodyCollectConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allow_redisplay property
  CollectPaymentMethodPostRequestBodyCollectConfigAllowRedisplay?
      allowRedisplay;

  ///  The enable_customer_cancellation property
  bool? enableCustomerCancellation;

  ///  The skip_tipping property
  bool? skipTipping;

  ///  The tipping property
  CollectPaymentMethodPostRequestBodyCollectConfigTipping? tipping;

  /// Instantiates a new [CollectPaymentMethodPostRequestBodyCollectConfig] and sets the default values.
  CollectPaymentMethodPostRequestBodyCollectConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectPaymentMethodPostRequestBodyCollectConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CollectPaymentMethodPostRequestBodyCollectConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<
                CollectPaymentMethodPostRequestBodyCollectConfigAllowRedisplay>(
            (stringValue) =>
                CollectPaymentMethodPostRequestBodyCollectConfigAllowRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['enable_customer_cancellation'] =
        (node) => enableCustomerCancellation = node.getBoolValue();
    deserializerMap['skip_tipping'] =
        (node) => skipTipping = node.getBoolValue();
    deserializerMap['tipping'] = (node) => tipping = node.getObjectValue<
            CollectPaymentMethodPostRequestBodyCollectConfigTipping>(
        CollectPaymentMethodPostRequestBodyCollectConfigTipping
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            CollectPaymentMethodPostRequestBodyCollectConfigAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeBoolValue('enable_customer_cancellation',
        value: enableCustomerCancellation);
    writer.writeBoolValue('skip_tipping', value: skipTipping);
    writer.writeObjectValue<
            CollectPaymentMethodPostRequestBodyCollectConfigTipping>(
        'tipping', tipping);
    writer.writeAdditionalData(additionalData);
  }
}
