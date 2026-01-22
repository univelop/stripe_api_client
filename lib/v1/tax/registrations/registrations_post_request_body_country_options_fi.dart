// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_fi_standard.dart';
import './registrations_post_request_body_country_options_fi_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsFi
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The standard property
  RegistrationsPostRequestBodyCountryOptionsFiStandard? standard;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsFiType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsFi] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsFi() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsFi
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsFi();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['standard'] = (node) => standard = node
        .getObjectValue<RegistrationsPostRequestBodyCountryOptionsFiStandard>(
            RegistrationsPostRequestBodyCountryOptionsFiStandard
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsFiType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsFiType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<RegistrationsPostRequestBodyCountryOptionsFiStandard>(
            'standard', standard);
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsFiType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
