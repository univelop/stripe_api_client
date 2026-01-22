// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
/// SPEI Records contain Mexico bank account details per the SPEI format.
class FundingInstructionsBankTransferSpeiRecord
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_address property
  Address? accountHolderAddress;

  ///  The account holder name
  String? accountHolderName;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_address property
  Address? bankAddress;

  ///  The three-digit bank code
  String? bankCode;

  ///  The short banking institution name
  String? bankName;

  ///  The CLABE number
  String? clabe;

  /// Instantiates a new [FundingInstructionsBankTransferSpeiRecord] and sets the default values.
  FundingInstructionsBankTransferSpeiRecord() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransferSpeiRecord createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FundingInstructionsBankTransferSpeiRecord();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_address'] = (node) => accountHolderAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['bank_address'] = (node) => bankAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['clabe'] = (node) => clabe = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>(
        'account_holder_address', accountHolderAddress);
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeObjectValue<Address>('bank_address', bankAddress);
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('clabe', clabe);
    writer.writeAdditionalData(additionalData);
  }
}
