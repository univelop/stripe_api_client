// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionPixDisplayQrCode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The raw data string used to generate QR code, it should be used together with QR code library.
  String? data;

  ///  The date (unix timestamp) when the PIX expires.
  int? expiresAt;

  ///  The URL to the hosted pix instructions page, which allows customers to view the pix QR code.
  String? hostedInstructionsUrl;

  ///  The image_url_png string used to render png QR code
  String? imageUrlPng;

  ///  The image_url_svg string used to render svg QR code
  String? imageUrlSvg;

  /// Instantiates a new [PaymentIntentNextActionPixDisplayQrCode] and sets the default values.
  PaymentIntentNextActionPixDisplayQrCode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionPixDisplayQrCode createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionPixDisplayQrCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data = node.getStringValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
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
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('hosted_instructions_url', hostedInstructionsUrl);
    writer.writeStringValue('image_url_png', imageUrlPng);
    writer.writeStringValue('image_url_svg', imageUrlSvg);
    writer.writeAdditionalData(additionalData);
  }
}
