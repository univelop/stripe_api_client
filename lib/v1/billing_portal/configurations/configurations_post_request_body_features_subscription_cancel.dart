// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_cancel_cancellation_reason.dart';
import './configurations_post_request_body_features_subscription_cancel_mode.dart';
import './configurations_post_request_body_features_subscription_cancel_proration_behavior.dart';

/// auto generated
class ConfigurationsPostRequestBodyFeaturesSubscriptionCancel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cancellation_reason property
  ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReason?
      cancellationReason;

  ///  The enabled property
  bool? enabled;

  ///  The mode property
  ConfigurationsPostRequestBodyFeaturesSubscriptionCancelMode? mode;

  ///  The proration_behavior property
  ConfigurationsPostRequestBodyFeaturesSubscriptionCancelProrationBehavior?
      prorationBehavior;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeaturesSubscriptionCancel] and sets the default values.
  ConfigurationsPostRequestBodyFeaturesSubscriptionCancel()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionCancel
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeaturesSubscriptionCancel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'cancellation_reason'] = (node) => cancellationReason = node.getObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReason>(
        ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReason
            .createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['mode'] = (node) => mode = node.getEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelMode>(
        (stringValue) =>
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'proration_behavior'] = (node) => prorationBehavior = node.getEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelProrationBehavior>(
        (stringValue) =>
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelCancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelMode>(
        'mode', mode, (e) => e?.value);
    writer.writeEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancelProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
