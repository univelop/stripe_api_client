// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_gn_standard.dart';
import './registrations_post_request_body_country_options_gn_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsGn
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The standard property
  RegistrationsPostRequestBodyCountryOptionsGnStandard? standard;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsGnType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsGn] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsGn() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsGn
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsGn();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['standard'] = (node) => standard = node
        .getObjectValue<RegistrationsPostRequestBodyCountryOptionsGnStandard>(
            RegistrationsPostRequestBodyCountryOptionsGnStandard
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsGnType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsGnType
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
        .writeObjectValue<RegistrationsPostRequestBodyCountryOptionsGnStandard>(
            'standard', standard);
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsGnType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
