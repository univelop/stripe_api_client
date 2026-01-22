// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The BIC of the bank of the sender of the funding.
  String? bic;

  ///  The last 4 digits of the IBAN of the sender of the funding.
  String? ibanLast4;

  ///  The full name of the sender, as supplied by the sending bank.
  String? senderName;

  /// Instantiates a new [CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer] and sets the default values.
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bic'] = (node) => bic = node.getStringValue();
    deserializerMap['iban_last4'] = (node) => ibanLast4 = node.getStringValue();
    deserializerMap['sender_name'] =
        (node) => senderName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bic', bic);
    writer.writeStringValue('iban_last4', ibanLast4);
    writer.writeStringValue('sender_name', senderName);
    writer.writeAdditionalData(additionalData);
  }
}
