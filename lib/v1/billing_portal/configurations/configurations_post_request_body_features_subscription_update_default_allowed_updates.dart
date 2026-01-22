// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_update_default_allowed_updates_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>], [String?]
class ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates
    implements Parsable {
  ///  Composed type representation for type [Iterable<ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>]
  Iterable<
          ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>?
      configurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.configurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1 =
          parseNode.getCollectionOfObjectValues<
                  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>(
              ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (configurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>(
          null,
          configurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1);
    }
  }
}
