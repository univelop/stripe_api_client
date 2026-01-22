// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_au_standard_place_of_supply_scheme.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsAuStandard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The place_of_supply_scheme property
  RegistrationsPostRequestBodyCountryOptionsAuStandardPlaceOfSupplyScheme?
      placeOfSupplyScheme;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsAuStandard] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsAuStandard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsAuStandard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsAuStandard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'place_of_supply_scheme'] = (node) => placeOfSupplyScheme = node.getEnumValue<
            RegistrationsPostRequestBodyCountryOptionsAuStandardPlaceOfSupplyScheme>(
        (stringValue) =>
            RegistrationsPostRequestBodyCountryOptionsAuStandardPlaceOfSupplyScheme
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
            RegistrationsPostRequestBodyCountryOptionsAuStandardPlaceOfSupplyScheme>(
        'place_of_supply_scheme', placeOfSupplyScheme, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
