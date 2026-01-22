// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsAchCreditTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Account number to transfer funds to.
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank associated with the routing number.
  String? bankName;

  ///  Routing transit number for the bank account to transfer funds to.
  String? routingNumber;

  ///  SWIFT code of the bank associated with the routing number.
  String? swiftCode;

  /// Instantiates a new [PaymentMethodDetailsAchCreditTransfer] and sets the default values.
  PaymentMethodDetailsAchCreditTransfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsAchCreditTransfer createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsAchCreditTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    deserializerMap['swift_code'] = (node) => swiftCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeStringValue('swift_code', swiftCode);
    writer.writeAdditionalData(additionalData);
  }
}
