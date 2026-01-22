// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionPromptpayDisplayQrCode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The raw data string used to generate QR code, it should be used together with QR code library.
  String? data;

  ///  The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
  String? hostedInstructionsUrl;

  ///  The PNG path used to render the QR code, can be used as the source in an HTML img tag
  String? imageUrlPng;

  ///  The SVG path used to render the QR code, can be used as the source in an HTML img tag
  String? imageUrlSvg;

  /// Instantiates a new [PaymentIntentNextActionPromptpayDisplayQrCode] and sets the default values.
  PaymentIntentNextActionPromptpayDisplayQrCode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionPromptpayDisplayQrCode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionPromptpayDisplayQrCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data = node.getStringValue();
    deserializerMap['hosted_instructions_url'] =
        (node) => hostedInstructionsUrl = node.getStringValue();
    deserializerMap['image_url_png'] =
        (node) => imageUrlPng = node.getStringValue();
    deserializerMap['image_url_svg'] =
        (node) => imageUrlSvg = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('data', data);
    writer.writeStringValue('hosted_instructions_url', hostedInstructionsUrl);
    writer.writeStringValue('image_url_png', imageUrlPng);
    writer.writeStringValue('image_url_svg', imageUrlSvg);
    writer.writeAdditionalData(additionalData);
  }
}
