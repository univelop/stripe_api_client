// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_branding_settings_logo_type.dart';

/// auto generated
class SessionsPostRequestBodyBrandingSettingsLogo
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The file property
  String? file;

  ///  The type property
  SessionsPostRequestBodyBrandingSettingsLogoType? type_;

  ///  The url property
  String? url;

  /// Instantiates a new [SessionsPostRequestBodyBrandingSettingsLogo] and sets the default values.
  SessionsPostRequestBodyBrandingSettingsLogo() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyBrandingSettingsLogo
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyBrandingSettingsLogo();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['file'] = (node) => file = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SessionsPostRequestBodyBrandingSettingsLogoType>(
            (stringValue) => SessionsPostRequestBodyBrandingSettingsLogoType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('file', file);
    writer.writeEnumValue<SessionsPostRequestBodyBrandingSettingsLogoType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
