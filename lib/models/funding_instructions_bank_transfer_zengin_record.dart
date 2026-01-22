// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
/// Zengin Records contain Japan bank account details per the Zengin format.
class FundingInstructionsBankTransferZenginRecord
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_address property
  Address? accountHolderAddress;

  ///  The account holder name
  String? accountHolderName;

  ///  The account number
  String? accountNumber;

  ///  The bank account type. In Japan, this can only be `futsu` or `toza`.
  String? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_address property
  Address? bankAddress;

  ///  The bank code of the account
  String? bankCode;

  ///  The bank name of the account
  String? bankName;

  ///  The branch code of the account
  String? branchCode;

  ///  The branch name of the account
  String? branchName;

  /// Instantiates a new [FundingInstructionsBankTransferZenginRecord] and sets the default values.
  FundingInstructionsBankTransferZenginRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransferZenginRecord
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FundingInstructionsBankTransferZenginRecord();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_address'] = (node) => accountHolderAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['account_type'] =
        (node) => accountType = node.getStringValue();
    deserializerMap['bank_address'] = (node) => bankAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['branch_code'] =
        (node) => branchCode = node.getStringValue();
    deserializerMap['branch_name'] =
        (node) => branchName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>(
        'account_holder_address', accountHolderAddress);
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('account_type', accountType);
    writer.writeObjectValue<Address>('bank_address', bankAddress);
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('branch_code', branchCode);
    writer.writeStringValue('branch_name', branchName);
    writer.writeAdditionalData(additionalData);
  }
}
