// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_payment_method_update_payment_method_configuration.dart';

/// auto generated
class ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The payment_method_configuration property
  ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdatePaymentMethodConfiguration?
      paymentMethodConfiguration;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate] and sets the default values.
  ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['payment_method_configuration'] = (node) =>
        paymentMethodConfiguration = node.getObjectValue<
                ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdatePaymentMethodConfiguration>(
            ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdatePaymentMethodConfiguration
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdatePaymentMethodConfiguration>(
        'payment_method_configuration', paymentMethodConfiguration);
    writer.writeAdditionalData(additionalData);
  }
}
