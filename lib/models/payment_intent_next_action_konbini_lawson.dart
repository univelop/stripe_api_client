// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionKonbiniLawson
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The confirmation number.
  String? confirmationNumber;

  ///  The payment code.
  String? paymentCode;

  /// Instantiates a new [PaymentIntentNextActionKonbiniLawson] and sets the default values.
  PaymentIntentNextActionKonbiniLawson() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionKonbiniLawson createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextActionKonbiniLawson();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['confirmation_number'] =
        (node) => confirmationNumber = node.getStringValue();
    deserializerMap['payment_code'] =
        (node) => paymentCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('confirmation_number', confirmationNumber);
    writer.writeStringValue('payment_code', paymentCode);
    writer.writeAdditionalData(additionalData);
  }
}
