// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_eu_standard.dart';
import './tax_product_registrations_resource_country_options_europe_type.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsEurope
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The standard property
  TaxProductRegistrationsResourceCountryOptionsEuStandard? standard;

  ///  Type of registration in an EU country.
  TaxProductRegistrationsResourceCountryOptionsEuropeType? type_;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsEurope] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsEurope() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsEurope
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsEurope();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['standard'] = (node) => standard = node.getObjectValue<
            TaxProductRegistrationsResourceCountryOptionsEuStandard>(
        TaxProductRegistrationsResourceCountryOptionsEuStandard
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TaxProductRegistrationsResourceCountryOptionsEuropeType>(
            (stringValue) =>
                TaxProductRegistrationsResourceCountryOptionsEuropeType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TaxProductRegistrationsResourceCountryOptionsEuStandard>(
        'standard', standard);
    writer.writeEnumValue<
            TaxProductRegistrationsResourceCountryOptionsEuropeType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
