// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodPayto implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Bank-State-Branch number of the bank account.
  String? bsbNumber;

  ///  Last four digits of the bank account number.
  String? last4;

  ///  The PayID alias for the bank account.
  String? payId;

  /// Instantiates a new [PaymentMethodPayto] and sets the default values.
  PaymentMethodPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodPayto createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bsb_number'] = (node) => bsbNumber = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['pay_id'] = (node) => payId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bsb_number', bsbNumber);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('pay_id', payId);
    writer.writeAdditionalData(additionalData);
  }
}
