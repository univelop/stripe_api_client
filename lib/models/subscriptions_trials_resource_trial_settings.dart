// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_trials_resource_end_behavior.dart';

/// auto generated
/// Configures how this subscription behaves during the trial period.
class SubscriptionsTrialsResourceTrialSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Defines how a subscription behaves when a free trial ends.
  SubscriptionsTrialsResourceEndBehavior? endBehavior;

  /// Instantiates a new [SubscriptionsTrialsResourceTrialSettings] and sets the default values.
  SubscriptionsTrialsResourceTrialSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsTrialsResourceTrialSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsTrialsResourceTrialSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end_behavior'] = (node) => endBehavior =
        node.getObjectValue<SubscriptionsTrialsResourceEndBehavior>(
            SubscriptionsTrialsResourceEndBehavior
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionsTrialsResourceEndBehavior>(
        'end_behavior', endBehavior);
    writer.writeAdditionalData(additionalData);
  }
}
