// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_branding_settings_logo_type.dart';

/// auto generated
class PaymentPagesCheckoutSessionBrandingSettingsLogo
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of a [File upload](https://stripe.com/docs/api/files) representing the logo. Purpose must be `business_logo`. Required if `type` is `file` and disallowed otherwise.
  String? file;

  ///  The type of image for the logo. Must be one of `file` or `url`.
  PaymentPagesCheckoutSessionBrandingSettingsLogoType? type_;

  ///  The URL of the image. Present when `type` is `url`.
  String? url;

  /// Instantiates a new [PaymentPagesCheckoutSessionBrandingSettingsLogo] and sets the default values.
  PaymentPagesCheckoutSessionBrandingSettingsLogo() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionBrandingSettingsLogo
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionBrandingSettingsLogo();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['file'] = (node) => file = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentPagesCheckoutSessionBrandingSettingsLogoType>(
            (stringValue) => PaymentPagesCheckoutSessionBrandingSettingsLogoType
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
    writer.writeEnumValue<PaymentPagesCheckoutSessionBrandingSettingsLogoType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
