// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_next_action_cashapp_qr_code.dart';

/// auto generated
class PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The URL to the hosted Cash App Pay instructions page, which allows customers to view the QR code, and supports QR code refreshing on expiration.
  String? hostedInstructionsUrl;

  ///  The url for mobile redirect based auth
  String? mobileAuthUrl;

  ///  The qr_code property
  PaymentIntentNextActionCashappQrCode? qrCode;

  /// Instantiates a new [PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode] and sets the default values.
  PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['hosted_instructions_url'] =
        (node) => hostedInstructionsUrl = node.getStringValue();
    deserializerMap['mobile_auth_url'] =
        (node) => mobileAuthUrl = node.getStringValue();
    deserializerMap['qr_code'] = (node) => qrCode =
        node.getObjectValue<PaymentIntentNextActionCashappQrCode>(
            PaymentIntentNextActionCashappQrCode.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('hosted_instructions_url', hostedInstructionsUrl);
    writer.writeStringValue('mobile_auth_url', mobileAuthUrl);
    writer.writeObjectValue<PaymentIntentNextActionCashappQrCode>(
        'qr_code', qrCode);
    writer.writeAdditionalData(additionalData);
  }
}
