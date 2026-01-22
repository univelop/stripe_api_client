// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_branding_settings_icon.dart';
import './account_branding_settings_logo.dart';

/// auto generated
class AccountBrandingSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
  AccountBrandingSettingsIcon? icon;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
  AccountBrandingSettingsLogo? logo;

  ///  A CSS hex color value representing the primary branding color for this account
  String? primaryColor;

  ///  A CSS hex color value representing the secondary branding color for this account
  String? secondaryColor;

  /// Instantiates a new [AccountBrandingSettings] and sets the default values.
  AccountBrandingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountBrandingSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountBrandingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['icon'] = (node) => icon =
        node.getObjectValue<AccountBrandingSettingsIcon>(
            AccountBrandingSettingsIcon.createFromDiscriminatorValue);
    deserializerMap['logo'] = (node) => logo =
        node.getObjectValue<AccountBrandingSettingsLogo>(
            AccountBrandingSettingsLogo.createFromDiscriminatorValue);
    deserializerMap['primary_color'] =
        (node) => primaryColor = node.getStringValue();
    deserializerMap['secondary_color'] =
        (node) => secondaryColor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountBrandingSettingsIcon>('icon', icon);
    writer.writeObjectValue<AccountBrandingSettingsLogo>('logo', logo);
    writer.writeStringValue('primary_color', primaryColor);
    writer.writeStringValue('secondary_color', secondaryColor);
    writer.writeAdditionalData(additionalData);
  }
}
