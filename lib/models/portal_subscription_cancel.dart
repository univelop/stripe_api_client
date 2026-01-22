// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_subscription_cancel_mode.dart';
import './portal_subscription_cancel_proration_behavior.dart';
import './portal_subscription_cancellation_reason.dart';

/// auto generated
class PortalSubscriptionCancel implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cancellation_reason property
  PortalSubscriptionCancellationReason? cancellationReason;

  ///  Whether the feature is enabled.
  bool? enabled;

  ///  Whether to cancel subscriptions immediately or at the end of the billing period.
  PortalSubscriptionCancelMode? mode;

  ///  Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`.
  PortalSubscriptionCancelProrationBehavior? prorationBehavior;

  /// Instantiates a new [PortalSubscriptionCancel] and sets the default values.
  PortalSubscriptionCancel() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalSubscriptionCancel createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalSubscriptionCancel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getObjectValue<PortalSubscriptionCancellationReason>(
            PortalSubscriptionCancellationReason.createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['mode'] = (node) => mode =
        node.getEnumValue<PortalSubscriptionCancelMode>((stringValue) =>
            PortalSubscriptionCancelMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<PortalSubscriptionCancelProrationBehavior>(
            (stringValue) => PortalSubscriptionCancelProrationBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PortalSubscriptionCancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeEnumValue<PortalSubscriptionCancelMode>(
        'mode', mode, (e) => e?.value);
    writer.writeEnumValue<PortalSubscriptionCancelProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
