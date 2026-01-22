// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_jp_standard.dart';
import './registrations_post_request_body_country_options_jp_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsJp
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The standard property
  RegistrationsPostRequestBodyCountryOptionsJpStandard? standard;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsJpType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsJp] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsJp() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsJp
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsJp();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['standard'] = (node) => standard = node
        .getObjectValue<RegistrationsPostRequestBodyCountryOptionsJpStandard>(
            RegistrationsPostRequestBodyCountryOptionsJpStandard
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsJpType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsJpType
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
        .writeObjectValue<RegistrationsPostRequestBodyCountryOptionsJpStandard>(
            'standard', standard);
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsJpType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
