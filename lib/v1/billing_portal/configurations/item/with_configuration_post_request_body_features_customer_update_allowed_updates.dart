// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_customer_update_allowed_updates_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1>], [String?]
class WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdates
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1>]
  Iterable<
          WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1>?
      withConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdates
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdates();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1>(
            WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1>(
              WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1
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
    } else if (withConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1>(
          null,
          withConfigurationPostRequestBodyFeaturesCustomerUpdateAllowedUpdatesMember1);
    }
  }
}
