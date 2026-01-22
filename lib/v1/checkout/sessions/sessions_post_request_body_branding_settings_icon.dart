// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_branding_settings_icon_type.dart';

/// auto generated
class SessionsPostRequestBodyBrandingSettingsIcon
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The file property
  String? file;

  ///  The type property
  SessionsPostRequestBodyBrandingSettingsIconType? type_;

  ///  The url property
  String? url;

  /// Instantiates a new [SessionsPostRequestBodyBrandingSettingsIcon] and sets the default values.
  SessionsPostRequestBodyBrandingSettingsIcon() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyBrandingSettingsIcon
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyBrandingSettingsIcon();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['file'] = (node) => file = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SessionsPostRequestBodyBrandingSettingsIconType>(
            (stringValue) => SessionsPostRequestBodyBrandingSettingsIconType
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
    writer.writeEnumValue<SessionsPostRequestBodyBrandingSettingsIconType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
