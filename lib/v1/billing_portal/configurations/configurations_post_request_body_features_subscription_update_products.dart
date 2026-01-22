// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_update_products_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>], [String?]
class ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts
    implements Parsable {
  ///  Composed type representation for type [Iterable<ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>]
  Iterable<
          ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>?
      configurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.configurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1 =
          parseNode.getCollectionOfObjectValues<
                  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>(
              ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1
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
    } else if (configurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>(
          null,
          configurationsPostRequestBodyFeaturesSubscriptionUpdateProductsMember1);
    }
  }
}
