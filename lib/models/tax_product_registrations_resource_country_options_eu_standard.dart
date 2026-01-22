// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_eu_standard_place_of_supply_scheme.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsEuStandard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Place of supply scheme used in an EU standard registration.
  TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme?
      placeOfSupplyScheme;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsEuStandard] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsEuStandard()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsEuStandard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsEuStandard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'place_of_supply_scheme'] = (node) => placeOfSupplyScheme = node.getEnumValue<
            TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme>(
        (stringValue) =>
            TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme
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
            TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme>(
        'place_of_supply_scheme', placeOfSupplyScheme, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
