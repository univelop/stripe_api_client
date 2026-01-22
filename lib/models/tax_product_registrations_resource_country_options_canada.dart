// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_ca_province_standard.dart';
import './tax_product_registrations_resource_country_options_canada_type.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsCanada
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The province_standard property
  TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard?
      provinceStandard;

  ///  Type of registration in Canada.
  TaxProductRegistrationsResourceCountryOptionsCanadaType? type_;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsCanada] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsCanada() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsCanada
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsCanada();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'province_standard'] = (node) => provinceStandard = node.getObjectValue<
            TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard>(
        TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TaxProductRegistrationsResourceCountryOptionsCanadaType>(
            (stringValue) =>
                TaxProductRegistrationsResourceCountryOptionsCanadaType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard>(
        'province_standard', provinceStandard);
    writer.writeEnumValue<
            TaxProductRegistrationsResourceCountryOptionsCanadaType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
