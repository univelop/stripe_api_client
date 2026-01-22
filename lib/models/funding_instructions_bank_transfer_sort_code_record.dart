// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
/// Sort Code Records contain U.K. bank account details per the sort code format.
class FundingInstructionsBankTransferSortCodeRecord
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_address property
  Address? accountHolderAddress;

  ///  The name of the person or business that owns the bank account
  String? accountHolderName;

  ///  The account number
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_address property
  Address? bankAddress;

  ///  The six-digit sort code
  String? sortCode;

  /// Instantiates a new [FundingInstructionsBankTransferSortCodeRecord] and sets the default values.
  FundingInstructionsBankTransferSortCodeRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransferSortCodeRecord
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FundingInstructionsBankTransferSortCodeRecord();
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
    deserializerMap['bank_address'] = (node) => bankAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['sort_code'] = (node) => sortCode = node.getStringValue();
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
    writer.writeObjectValue<Address>('bank_address', bankAddress);
    writer.writeStringValue('sort_code', sortCode);
    writer.writeAdditionalData(additionalData);
  }
}
