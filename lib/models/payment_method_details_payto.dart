// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsPayto implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Bank-State-Branch number of the bank account.
  String? bsbNumber;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  ID of the mandate used to make this payment.
  String? mandate;

  ///  The PayID alias for the bank account.
  String? payId;

  /// Instantiates a new [PaymentMethodDetailsPayto] and sets the default values.
  PaymentMethodDetailsPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsPayto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bsb_number'] = (node) => bsbNumber = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate'] = (node) => mandate = node.getStringValue();
    deserializerMap['pay_id'] = (node) => payId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bsb_number', bsbNumber);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('mandate', mandate);
    writer.writeStringValue('pay_id', payId);
    writer.writeAdditionalData(additionalData);
  }
}
