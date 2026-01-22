// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_next_action_swish_qr_code.dart';

/// auto generated
class PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The URL to the hosted Swish instructions page, which allows customers to view the QR code.
  String? hostedInstructionsUrl;

  ///  The qr_code property
  PaymentIntentNextActionSwishQrCode? qrCode;

  /// Instantiates a new [PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode] and sets the default values.
  PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['hosted_instructions_url'] =
        (node) => hostedInstructionsUrl = node.getStringValue();
    deserializerMap['qr_code'] = (node) => qrCode =
        node.getObjectValue<PaymentIntentNextActionSwishQrCode>(
            PaymentIntentNextActionSwishQrCode.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('hosted_instructions_url', hostedInstructionsUrl);
    writer.writeObjectValue<PaymentIntentNextActionSwishQrCode>(
        'qr_code', qrCode);
    writer.writeAdditionalData(additionalData);
  }
}
