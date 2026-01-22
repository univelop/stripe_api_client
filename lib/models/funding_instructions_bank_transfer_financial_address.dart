// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './funding_instructions_bank_transfer_aba_record.dart';
import './funding_instructions_bank_transfer_financial_address_supported_networks.dart';
import './funding_instructions_bank_transfer_financial_address_type.dart';
import './funding_instructions_bank_transfer_iban_record.dart';
import './funding_instructions_bank_transfer_sort_code_record.dart';
import './funding_instructions_bank_transfer_spei_record.dart';
import './funding_instructions_bank_transfer_swift_record.dart';
import './funding_instructions_bank_transfer_zengin_record.dart';

/// auto generated
/// FinancialAddresses contain identifying information that resolves to a FinancialAccount.
class FundingInstructionsBankTransferFinancialAddress
    implements AdditionalDataHolder, Parsable {
  ///  ABA Records contain U.S. bank account details per the ABA format.
  FundingInstructionsBankTransferAbaRecord? aba;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Iban Records contain E.U. bank account details per the SEPA format.
  FundingInstructionsBankTransferIbanRecord? iban;

  ///  Sort Code Records contain U.K. bank account details per the sort code format.
  FundingInstructionsBankTransferSortCodeRecord? sortCode;

  ///  SPEI Records contain Mexico bank account details per the SPEI format.
  FundingInstructionsBankTransferSpeiRecord? spei;

  ///  The payment networks supported by this FinancialAddress
  Iterable<FundingInstructionsBankTransferFinancialAddressSupportedNetworks>?
      supportedNetworks;

  ///  SWIFT Records contain U.S. bank account details per the SWIFT format.
  FundingInstructionsBankTransferSwiftRecord? swift;

  ///  The type of financial address
  FundingInstructionsBankTransferFinancialAddressType? type_;

  ///  Zengin Records contain Japan bank account details per the Zengin format.
  FundingInstructionsBankTransferZenginRecord? zengin;

  /// Instantiates a new [FundingInstructionsBankTransferFinancialAddress] and sets the default values.
  FundingInstructionsBankTransferFinancialAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructionsBankTransferFinancialAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FundingInstructionsBankTransferFinancialAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aba'] = (node) => aba = node.getObjectValue<
            FundingInstructionsBankTransferAbaRecord>(
        FundingInstructionsBankTransferAbaRecord.createFromDiscriminatorValue);
    deserializerMap['iban'] = (node) => iban = node.getObjectValue<
            FundingInstructionsBankTransferIbanRecord>(
        FundingInstructionsBankTransferIbanRecord.createFromDiscriminatorValue);
    deserializerMap['sort_code'] = (node) => sortCode =
        node.getObjectValue<FundingInstructionsBankTransferSortCodeRecord>(
            FundingInstructionsBankTransferSortCodeRecord
                .createFromDiscriminatorValue);
    deserializerMap['spei'] = (node) => spei = node.getObjectValue<
            FundingInstructionsBankTransferSpeiRecord>(
        FundingInstructionsBankTransferSpeiRecord.createFromDiscriminatorValue);
    deserializerMap['supported_networks'] = (node) => supportedNetworks =
        node.getCollectionOfEnumValues<
                FundingInstructionsBankTransferFinancialAddressSupportedNetworks>(
            (stringValue) =>
                FundingInstructionsBankTransferFinancialAddressSupportedNetworks
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['swift'] = (node) => swift =
        node.getObjectValue<FundingInstructionsBankTransferSwiftRecord>(
            FundingInstructionsBankTransferSwiftRecord
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<FundingInstructionsBankTransferFinancialAddressType>(
            (stringValue) => FundingInstructionsBankTransferFinancialAddressType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['zengin'] = (node) => zengin =
        node.getObjectValue<FundingInstructionsBankTransferZenginRecord>(
            FundingInstructionsBankTransferZenginRecord
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FundingInstructionsBankTransferAbaRecord>(
        'aba', aba);
    writer.writeObjectValue<FundingInstructionsBankTransferIbanRecord>(
        'iban', iban);
    writer.writeObjectValue<FundingInstructionsBankTransferSortCodeRecord>(
        'sort_code', sortCode);
    writer.writeObjectValue<FundingInstructionsBankTransferSpeiRecord>(
        'spei', spei);
    writer.writeCollectionOfEnumValues<
            FundingInstructionsBankTransferFinancialAddressSupportedNetworks>(
        'supported_networks', supportedNetworks, (e) => e?.value);
    writer.writeObjectValue<FundingInstructionsBankTransferSwiftRecord>(
        'swift', swift);
    writer.writeEnumValue<FundingInstructionsBankTransferFinancialAddressType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<FundingInstructionsBankTransferZenginRecord>(
        'zengin', zengin);
    writer.writeAdditionalData(additionalData);
  }
}
