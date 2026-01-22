// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_cancel_cancellation_reason.dart';
import './with_configuration_post_request_body_features_subscription_cancel_mode.dart';
import './with_configuration_post_request_body_features_subscription_cancel_proration_behavior.dart';

/// auto generated
class WithConfigurationPostRequestBodyFeaturesSubscriptionCancel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cancellation_reason property
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason?
      cancellationReason;

  ///  The enabled property
  bool? enabled;

  ///  The mode property
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancelMode? mode;

  ///  The proration_behavior property
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancelProrationBehavior?
      prorationBehavior;

  /// Instantiates a new [WithConfigurationPostRequestBodyFeaturesSubscriptionCancel] and sets the default values.
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancel()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionCancel
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyFeaturesSubscriptionCancel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'cancellation_reason'] = (node) => cancellationReason = node.getObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason>(
        WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason
            .createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['mode'] = (node) => mode = node.getEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelMode>(
        (stringValue) =>
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelMode
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'proration_behavior'] = (node) => prorationBehavior = node.getEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelProrationBehavior>(
        (stringValue) =>
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelProrationBehavior
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
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelCancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelMode>(
        'mode', mode, (e) => e?.value);
    writer.writeEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancelProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
