// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_kr_card_display_preference_preference.dart';

/// auto generated
class WithConfigurationPostRequestBodyKrCardDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preference property
  WithConfigurationPostRequestBodyKrCardDisplayPreferencePreference? preference;

  /// Instantiates a new [WithConfigurationPostRequestBodyKrCardDisplayPreference] and sets the default values.
  WithConfigurationPostRequestBodyKrCardDisplayPreference()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyKrCardDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyKrCardDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preference'] = (node) => preference = node.getEnumValue<
            WithConfigurationPostRequestBodyKrCardDisplayPreferencePreference>(
        (stringValue) =>
            WithConfigurationPostRequestBodyKrCardDisplayPreferencePreference
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
            WithConfigurationPostRequestBodyKrCardDisplayPreferencePreference>(
        'preference', preference, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
