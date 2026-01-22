// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_branding_settings_border_style.dart';
import './payment_pages_checkout_session_branding_settings_icon.dart';
import './payment_pages_checkout_session_branding_settings_logo.dart';

/// auto generated
class PaymentPagesCheckoutSessionBrandingSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A hex color value starting with `#` representing the background color for the Checkout Session.
  String? backgroundColor;

  ///  The border style for the Checkout Session. Must be one of `rounded`, `rectangular`, or `pill`.
  PaymentPagesCheckoutSessionBrandingSettingsBorderStyle? borderStyle;

  ///  A hex color value starting with `#` representing the button color for the Checkout Session.
  String? buttonColor;

  ///  The display name shown on the Checkout Session.
  String? displayName;

  ///  The font family for the Checkout Session. Must be one of the [supported font families](https://docs.stripe.com/payments/checkout/customization/appearance?payment-ui=stripe-hosted#font-compatibility).
  String? fontFamily;

  ///  The icon for the Checkout Session. You cannot set both `logo` and `icon`.
  PaymentPagesCheckoutSessionBrandingSettingsIcon? icon;

  ///  The logo for the Checkout Session. You cannot set both `logo` and `icon`.
  PaymentPagesCheckoutSessionBrandingSettingsLogo? logo;

  /// Instantiates a new [PaymentPagesCheckoutSessionBrandingSettings] and sets the default values.
  PaymentPagesCheckoutSessionBrandingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionBrandingSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionBrandingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['background_color'] =
        (node) => backgroundColor = node.getStringValue();
    deserializerMap['border_style'] = (node) => borderStyle = node
        .getEnumValue<PaymentPagesCheckoutSessionBrandingSettingsBorderStyle>(
            (stringValue) =>
                PaymentPagesCheckoutSessionBrandingSettingsBorderStyle.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['button_color'] =
        (node) => buttonColor = node.getStringValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['font_family'] =
        (node) => fontFamily = node.getStringValue();
    deserializerMap['icon'] = (node) => icon =
        node.getObjectValue<PaymentPagesCheckoutSessionBrandingSettingsIcon>(
            PaymentPagesCheckoutSessionBrandingSettingsIcon
                .createFromDiscriminatorValue);
    deserializerMap['logo'] = (node) => logo =
        node.getObjectValue<PaymentPagesCheckoutSessionBrandingSettingsLogo>(
            PaymentPagesCheckoutSessionBrandingSettingsLogo
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('background_color', backgroundColor);
    writer
        .writeEnumValue<PaymentPagesCheckoutSessionBrandingSettingsBorderStyle>(
            'border_style', borderStyle, (e) => e?.value);
    writer.writeStringValue('button_color', buttonColor);
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('font_family', fontFamily);
    writer.writeObjectValue<PaymentPagesCheckoutSessionBrandingSettingsIcon>(
        'icon', icon);
    writer.writeObjectValue<PaymentPagesCheckoutSessionBrandingSettingsLogo>(
        'logo', logo);
    writer.writeAdditionalData(additionalData);
  }
}
