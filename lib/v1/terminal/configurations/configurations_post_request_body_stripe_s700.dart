// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_stripe_s700_splashscreen.dart';

/// auto generated
/// An object containing device type specific settings for Stripe S700 readers.
class ConfigurationsPostRequestBodyStripeS700
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The splashscreen property
  ConfigurationsPostRequestBodyStripeS700Splashscreen? splashscreen;

  /// Instantiates a new [ConfigurationsPostRequestBodyStripeS700] and sets the default values.
  ConfigurationsPostRequestBodyStripeS700() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyStripeS700 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfigurationsPostRequestBodyStripeS700();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['splashscreen'] = (node) => splashscreen = node
        .getObjectValue<ConfigurationsPostRequestBodyStripeS700Splashscreen>(
            ConfigurationsPostRequestBodyStripeS700Splashscreen
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<ConfigurationsPostRequestBodyStripeS700Splashscreen>(
            'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
