// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionDisplayMultibancoDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Entity number associated with this Multibanco payment.
  String? entity;

  ///  The timestamp at which the Multibanco voucher expires.
  int? expiresAt;

  ///  The URL for the hosted Multibanco voucher page, which allows customers to view a Multibanco voucher.
  String? hostedVoucherUrl;

  ///  Reference number associated with this Multibanco payment.
  String? reference;

  /// Instantiates a new [PaymentIntentNextActionDisplayMultibancoDetails] and sets the default values.
  PaymentIntentNextActionDisplayMultibancoDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionDisplayMultibancoDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionDisplayMultibancoDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['entity'] = (node) => entity = node.getStringValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['hosted_voucher_url'] =
        (node) => hostedVoucherUrl = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('entity', entity);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('hosted_voucher_url', hostedVoucherUrl);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
