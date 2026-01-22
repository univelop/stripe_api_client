// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_customer_update_allowed_updates.dart';

/// auto generated
class ConfigurationsPostRequestBodyFeaturesCustomerUpdate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allowed_updates property
  ConfigurationsPostRequestBodyFeaturesCustomerUpdateAllowedUpdates?
      allowedUpdates;

  ///  The enabled property
  bool? enabled;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeaturesCustomerUpdate] and sets the default values.
  ConfigurationsPostRequestBodyFeaturesCustomerUpdate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesCustomerUpdate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeaturesCustomerUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'allowed_updates'] = (node) => allowedUpdates = node.getObjectValue<
            ConfigurationsPostRequestBodyFeaturesCustomerUpdateAllowedUpdates>(
        ConfigurationsPostRequestBodyFeaturesCustomerUpdateAllowedUpdates
            .createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesCustomerUpdateAllowedUpdates>(
        'allowed_updates', allowedUpdates);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeAdditionalData(additionalData);
  }
}
