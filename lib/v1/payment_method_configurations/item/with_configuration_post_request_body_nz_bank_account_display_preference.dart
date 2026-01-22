// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_nz_bank_account_display_preference_preference.dart';

/// auto generated
class WithConfigurationPostRequestBodyNzBankAccountDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preference property
  WithConfigurationPostRequestBodyNzBankAccountDisplayPreferencePreference?
      preference;

  /// Instantiates a new [WithConfigurationPostRequestBodyNzBankAccountDisplayPreference] and sets the default values.
  WithConfigurationPostRequestBodyNzBankAccountDisplayPreference()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyNzBankAccountDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyNzBankAccountDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preference'] = (node) => preference = node.getEnumValue<
            WithConfigurationPostRequestBodyNzBankAccountDisplayPreferencePreference>(
        (stringValue) =>
            WithConfigurationPostRequestBodyNzBankAccountDisplayPreferencePreference
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
            WithConfigurationPostRequestBodyNzBankAccountDisplayPreferencePreference>(
        'preference', preference, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
