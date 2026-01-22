// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_konbini_display_preference.dart';

/// auto generated
/// Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://docs.stripe.com/payments/konbini) for more details.
class WithConfigurationPostRequestBodyKonbini
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyKonbiniDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyKonbini] and sets the default values.
  WithConfigurationPostRequestBodyKonbini() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyKonbini createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyKonbini();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyKonbiniDisplayPreference>(
            WithConfigurationPostRequestBodyKonbiniDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyKonbiniDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
