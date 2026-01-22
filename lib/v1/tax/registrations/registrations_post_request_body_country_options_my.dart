// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_country_options_my_type.dart';

/// auto generated
class RegistrationsPostRequestBodyCountryOptionsMy
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  RegistrationsPostRequestBodyCountryOptionsMyType? type_;

  /// Instantiates a new [RegistrationsPostRequestBodyCountryOptionsMy] and sets the default values.
  RegistrationsPostRequestBodyCountryOptionsMy() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBodyCountryOptionsMy
      createFromDiscriminatorValue(ParseNode parseNode) {
    return RegistrationsPostRequestBodyCountryOptionsMy();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<RegistrationsPostRequestBodyCountryOptionsMyType>(
            (stringValue) => RegistrationsPostRequestBodyCountryOptionsMyType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<RegistrationsPostRequestBodyCountryOptionsMyType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
