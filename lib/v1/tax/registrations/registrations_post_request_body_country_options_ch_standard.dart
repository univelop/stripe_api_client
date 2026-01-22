// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_ch_standard_place_of_supply_scheme.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsChStandard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The place_of_supply_scheme property
  RegistrationsPostRequestBodyCountryOptionsChStandardPlaceOfSupplyScheme?
      placeOfSupplyScheme;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsChStandard] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsChStandard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsChStandard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsChStandard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'place_of_supply_scheme'] = (node) => placeOfSupplyScheme = node.getEnumValue<
            RegistrationsPostRequestBodyCountryOptionsChStandardPlaceOfSupplyScheme>(
        (stringValue) =>
            RegistrationsPostRequestBodyCountryOptionsChStandardPlaceOfSupplyScheme
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
            RegistrationsPostRequestBodyCountryOptionsChStandardPlaceOfSupplyScheme>(
        'place_of_supply_scheme', placeOfSupplyScheme, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
