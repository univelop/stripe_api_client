// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_update_products_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>], [String?]
class WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>]
  Iterable<
          WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>?
      withConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>(
              WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1
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
    } else if (withConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1>(
          null,
          withConfigurationPostRequestBodyFeaturesSubscriptionUpdateProductsMember1);
    }
  }
}
