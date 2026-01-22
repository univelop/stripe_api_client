// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// ABA Records contain U.S. bank account details per the ABA format.
class TreasuryFinancialAccountsResourceAbaRecord
    implements AdditionalDataHolder, Parsable {
  ///  The name of the person or business that owns the bank account.
  String? accountHolderName;

  ///  The account number.
  String? accountNumber;

  ///  The last four characters of the account number.
  String? accountNumberLast4;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Name of the bank.
  String? bankName;

  ///  Routing number for the account.
  String? routingNumber;

  /// Instantiates a new [TreasuryFinancialAccountsResourceAbaRecord] and sets the default values.
  TreasuryFinancialAccountsResourceAbaRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceAbaRecord
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceAbaRecord();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['account_number_last4'] =
        (node) => accountNumberLast4 = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('account_number_last4', accountNumberLast4);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
