// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionBoleto implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp after which the boleto expires.
  int? expiresAt;

  ///  The URL to the hosted boleto voucher page, which allows customers to view the boleto voucher.
  String? hostedVoucherUrl;

  ///  The boleto number.
  String? number;

  ///  The URL to the downloadable boleto voucher PDF.
  String? pdf;

  /// Instantiates a new [PaymentIntentNextActionBoleto] and sets the default values.
  PaymentIntentNextActionBoleto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionBoleto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionBoleto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['hosted_voucher_url'] =
        (node) => hostedVoucherUrl = node.getStringValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['pdf'] = (node) => pdf = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('hosted_voucher_url', hostedVoucherUrl);
    writer.writeStringValue('number', number);
    writer.writeStringValue('pdf', pdf);
    writer.writeAdditionalData(additionalData);
  }
}
