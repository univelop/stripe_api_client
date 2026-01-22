// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionWechatPayDisplayQrCode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The data being used to generate QR code
  String? data;

  ///  The URL to the hosted WeChat Pay instructions page, which allows customers to view the WeChat Pay QR code.
  String? hostedInstructionsUrl;

  ///  The base64 image data for a pre-generated QR code
  String? imageDataUrl;

  ///  The image_url_png string used to render QR code
  String? imageUrlPng;

  ///  The image_url_svg string used to render QR code
  String? imageUrlSvg;

  /// Instantiates a new [PaymentIntentNextActionWechatPayDisplayQrCode] and sets the default values.
  PaymentIntentNextActionWechatPayDisplayQrCode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionWechatPayDisplayQrCode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionWechatPayDisplayQrCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data = node.getStringValue();
    deserializerMap['hosted_instructions_url'] =
        (node) => hostedInstructionsUrl = node.getStringValue();
    deserializerMap['image_data_url'] =
        (node) => imageDataUrl = node.getStringValue();
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
    writer.writeStringValue('image_data_url', imageDataUrl);
    writer.writeStringValue('image_url_png', imageUrlPng);
    writer.writeStringValue('image_url_svg', imageUrlSvg);
    writer.writeAdditionalData(additionalData);
  }
}
