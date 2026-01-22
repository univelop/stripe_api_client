// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionCashappQrCode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The date (unix timestamp) when the QR code expires.
  int? expiresAt;

  ///  The image_url_png string used to render QR code
  String? imageUrlPng;

  ///  The image_url_svg string used to render QR code
  String? imageUrlSvg;

  /// Instantiates a new [PaymentIntentNextActionCashappQrCode] and sets the default values.
  PaymentIntentNextActionCashappQrCode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionCashappQrCode createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionCashappQrCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
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
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('image_url_png', imageUrlPng);
    writer.writeStringValue('image_url_svg', imageUrlSvg);
    writer.writeAdditionalData(additionalData);
  }
}
