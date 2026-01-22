// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_link_display_preference_preference.dart';

/// auto generated
class WithConfigurationPostRequestBodyLinkDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preference property
  WithConfigurationPostRequestBodyLinkDisplayPreferencePreference? preference;

  /// Instantiates a new [WithConfigurationPostRequestBodyLinkDisplayPreference] and sets the default values.
  WithConfigurationPostRequestBodyLinkDisplayPreference() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyLinkDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyLinkDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preference'] = (node) => preference = node.getEnumValue<
            WithConfigurationPostRequestBodyLinkDisplayPreferencePreference>(
        (stringValue) =>
            WithConfigurationPostRequestBodyLinkDisplayPreferencePreference
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithConfigurationPostRequestBodyLinkDisplayPreferencePreference>(
        'preference', preference, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
