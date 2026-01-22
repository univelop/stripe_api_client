// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_ca_province_standard.dart';
import './registrations_post_request_body_country_options_ca_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsCa
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The province_standard property
  RegistrationsPostRequestBodyCountryOptionsCaProvinceStandard?
      provinceStandard;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsCaType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsCa] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsCa() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsCa
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsCa();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['province_standard'] = (node) => provinceStandard =
        node.getObjectValue<
                RegistrationsPostRequestBodyCountryOptionsCaProvinceStandard>(
            RegistrationsPostRequestBodyCountryOptionsCaProvinceStandard
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsCaType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsCaType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            RegistrationsPostRequestBodyCountryOptionsCaProvinceStandard>(
        'province_standard', provinceStandard);
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsCaType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
