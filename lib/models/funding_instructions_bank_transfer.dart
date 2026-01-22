// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './funding_instructions_bank_transfer_financial_address.dart';
import './funding_instructions_bank_transfer_type.dart';

/// auto generated
class FundingInstructionsBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The country of the bank account to fund
  String? country;

  ///  A list of financial addresses that can be used to fund a particular balance
  Iterable<FundingInstructionsBankTransferFinancialAddress>? financialAddresses;

  ///  The bank_transfer type
  FundingInstructionsBankTransferType? type_;

  /// Instantiates a new [FundingInstructionsBankTransfer] and sets the default values.
  FundingInstructionsBankTransfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransfer createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FundingInstructionsBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getCollectionOfObjectValues<
                FundingInstructionsBankTransferFinancialAddress>(
            FundingInstructionsBankTransferFinancialAddress
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<FundingInstructionsBankTransferType>((stringValue) =>
            FundingInstructionsBankTransferType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeCollectionOfObjectValues<
            FundingInstructionsBankTransferFinancialAddress>(
        'financial_addresses', financialAddresses);
    writer.writeEnumValue<FundingInstructionsBankTransferType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
