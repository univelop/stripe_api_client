// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
/// ABA Records contain U.S. bank account details per the ABA format.
class FundingInstructionsBankTransferAbaRecord
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_address property
  Address? accountHolderAddress;

  ///  The account holder name
  String? accountHolderName;

  ///  The ABA account number
  String? accountNumber;

  ///  The account type
  String? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_address property
  Address? bankAddress;

  ///  The bank name
  String? bankName;

  ///  The ABA routing number
  String? routingNumber;

  /// Instantiates a new [FundingInstructionsBankTransferAbaRecord] and sets the default values.
  FundingInstructionsBankTransferAbaRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransferAbaRecord createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FundingInstructionsBankTransferAbaRecord();
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
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
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
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
