// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_aba_record.dart';
import './treasury_financial_accounts_resource_financial_address_supported_networks.dart';
import './treasury_financial_accounts_resource_financial_address_type.dart';

/// auto generated
/// FinancialAddresses contain identifying information that resolves to a FinancialAccount.
class TreasuryFinancialAccountsResourceFinancialAddress
    implements AdditionalDataHolder, Parsable {
  ///  ABA Records contain U.S. bank account details per the ABA format.
  TreasuryFinancialAccountsResourceAbaRecord? aba;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The list of networks that the address supports
  Iterable<TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks>?
      supportedNetworks;

  ///  The type of financial address
  TreasuryFinancialAccountsResourceFinancialAddressType? type_;

  /// Instantiates a new [TreasuryFinancialAccountsResourceFinancialAddress] and sets the default values.
  TreasuryFinancialAccountsResourceFinancialAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceFinancialAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceFinancialAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aba'] = (node) => aba =
        node.getObjectValue<TreasuryFinancialAccountsResourceAbaRecord>(
            TreasuryFinancialAccountsResourceAbaRecord
                .createFromDiscriminatorValue);
    deserializerMap['supported_networks'] = (node) => supportedNetworks =
        node.getCollectionOfEnumValues<
                TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks>(
            (stringValue) =>
                TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TreasuryFinancialAccountsResourceFinancialAddressType>(
            (stringValue) =>
                TreasuryFinancialAccountsResourceFinancialAddressType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasuryFinancialAccountsResourceAbaRecord>(
        'aba', aba);
    writer.writeCollectionOfEnumValues<
            TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks>(
        'supported_networks', supportedNetworks, (e) => e?.value);
    writer
        .writeEnumValue<TreasuryFinancialAccountsResourceFinancialAddressType>(
            'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
