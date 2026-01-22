// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_trial_settings_end_behavior.dart';

/// auto generated
/// Settings related to subscription trials.
class SubscriptionExposedPostRequestBodyTrialSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end_behavior property
  SubscriptionExposedPostRequestBodyTrialSettingsEndBehavior? endBehavior;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyTrialSettings] and sets the default values.
  SubscriptionExposedPostRequestBodyTrialSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyTrialSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyTrialSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end_behavior'] = (node) => endBehavior =
        node.getObjectValue<
                SubscriptionExposedPostRequestBodyTrialSettingsEndBehavior>(
            SubscriptionExposedPostRequestBodyTrialSettingsEndBehavior
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyTrialSettingsEndBehavior>(
        'end_behavior', endBehavior);
    writer.writeAdditionalData(additionalData);
  }
}
