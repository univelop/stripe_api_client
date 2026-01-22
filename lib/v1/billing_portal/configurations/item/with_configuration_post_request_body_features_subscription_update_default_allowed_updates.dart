// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_update_default_allowed_updates_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>], [String?]
class WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>]
  Iterable<
          WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>?
      withConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>(
              WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1
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
    } else if (withConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1>(
          null,
          withConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdatesMember1);
    }
  }
}
