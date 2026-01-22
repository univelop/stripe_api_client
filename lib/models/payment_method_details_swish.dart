// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsSwish implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Uniquely identifies the payer's Swish account. You can use this attribute to check whether two Swish transactions were paid for by the same payer
  String? fingerprint;

  ///  Payer bank reference number for the payment
  String? paymentReference;

  ///  The last four digits of the Swish account phone number
  String? verifiedPhoneLast4;

  /// Instantiates a new [PaymentMethodDetailsSwish] and sets the default values.
  PaymentMethodDetailsSwish() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsSwish createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsSwish();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['payment_reference'] =
        (node) => paymentReference = node.getStringValue();
    deserializerMap['verified_phone_last4'] =
        (node) => verifiedPhoneLast4 = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('payment_reference', paymentReference);
    writer.writeStringValue('verified_phone_last4', verifiedPhoneLast4);
    writer.writeAdditionalData(additionalData);
  }
}
