// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_ba_standard.dart';
import './registrations_post_request_body_country_options_ba_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsBa
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The standard property
  RegistrationsPostRequestBodyCountryOptionsBaStandard? standard;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsBaType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsBa] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsBa() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsBa
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsBa();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['standard'] = (node) => standard = node
        .getObjectValue<RegistrationsPostRequestBodyCountryOptionsBaStandard>(
            RegistrationsPostRequestBodyCountryOptionsBaStandard
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsBaType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsBaType
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
        .writeObjectValue<RegistrationsPostRequestBodyCountryOptionsBaStandard>(
            'standard', standard);
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsBaType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
