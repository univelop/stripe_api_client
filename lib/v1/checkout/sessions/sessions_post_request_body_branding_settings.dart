// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_branding_settings_background_color.dart';
import './sessions_post_request_body_branding_settings_border_style.dart';
import './sessions_post_request_body_branding_settings_button_color.dart';
import './sessions_post_request_body_branding_settings_font_family.dart';
import './sessions_post_request_body_branding_settings_icon.dart';
import './sessions_post_request_body_branding_settings_logo.dart';

/// auto generated
/// The branding settings for the Checkout Session. This parameter is not allowed if ui_mode is `custom`.
class SessionsPostRequestBodyBrandingSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The background_color property
  SessionsPostRequestBodyBrandingSettingsBackgroundColor? backgroundColor;

  ///  The border_style property
  SessionsPostRequestBodyBrandingSettingsBorderStyle? borderStyle;

  ///  The button_color property
  SessionsPostRequestBodyBrandingSettingsButtonColor? buttonColor;

  ///  The display_name property
  String? displayName;

  ///  The font_family property
  SessionsPostRequestBodyBrandingSettingsFontFamily? fontFamily;

  ///  The icon property
  SessionsPostRequestBodyBrandingSettingsIcon? icon;

  ///  The logo property
  SessionsPostRequestBodyBrandingSettingsLogo? logo;

  /// Instantiates a new [SessionsPostRequestBodyBrandingSettings] and sets the default values.
  SessionsPostRequestBodyBrandingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyBrandingSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyBrandingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['background_color'] = (node) => backgroundColor = node
        .getObjectValue<SessionsPostRequestBodyBrandingSettingsBackgroundColor>(
            SessionsPostRequestBodyBrandingSettingsBackgroundColor
                .createFromDiscriminatorValue);
    deserializerMap['border_style'] = (node) => borderStyle =
        node.getEnumValue<SessionsPostRequestBodyBrandingSettingsBorderStyle>(
            (stringValue) => SessionsPostRequestBodyBrandingSettingsBorderStyle
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['button_color'] = (node) => buttonColor =
        node.getObjectValue<SessionsPostRequestBodyBrandingSettingsButtonColor>(
            SessionsPostRequestBodyBrandingSettingsButtonColor
                .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['font_family'] = (node) => fontFamily =
        node.getEnumValue<SessionsPostRequestBodyBrandingSettingsFontFamily>(
            (stringValue) => SessionsPostRequestBodyBrandingSettingsFontFamily
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['icon'] = (node) => icon =
        node.getObjectValue<SessionsPostRequestBodyBrandingSettingsIcon>(
            SessionsPostRequestBodyBrandingSettingsIcon
                .createFromDiscriminatorValue);
    deserializerMap['logo'] = (node) => logo =
        node.getObjectValue<SessionsPostRequestBodyBrandingSettingsLogo>(
            SessionsPostRequestBodyBrandingSettingsLogo
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyBrandingSettingsBackgroundColor>(
        'background_color', backgroundColor);
    writer.writeEnumValue<SessionsPostRequestBodyBrandingSettingsBorderStyle>(
        'border_style', borderStyle, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyBrandingSettingsButtonColor>(
        'button_color', buttonColor);
    writer.writeStringValue('display_name', displayName);
    writer.writeEnumValue<SessionsPostRequestBodyBrandingSettingsFontFamily>(
        'font_family', fontFamily, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyBrandingSettingsIcon>(
        'icon', icon);
    writer.writeObjectValue<SessionsPostRequestBodyBrandingSettingsLogo>(
        'logo', logo);
    writer.writeAdditionalData(additionalData);
  }
}
