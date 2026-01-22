// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_balance_cash.dart';
import './treasury_financial_accounts_resource_balance_inbound_pending.dart';
import './treasury_financial_accounts_resource_balance_outbound_pending.dart';

/// auto generated
/// Balance information for the FinancialAccount
class TreasuryFinancialAccountsResourceBalance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Funds the user can spend right now.
  TreasuryFinancialAccountsResourceBalanceCash? cash;

  ///  Funds not spendable yet, but will become available at a later time.
  TreasuryFinancialAccountsResourceBalanceInboundPending? inboundPending;

  ///  Funds in the account, but not spendable because they are being held for pending outbound flows.
  TreasuryFinancialAccountsResourceBalanceOutboundPending? outboundPending;

  /// Instantiates a new [TreasuryFinancialAccountsResourceBalance] and sets the default values.
  TreasuryFinancialAccountsResourceBalance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceBalance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cash'] = (node) => cash =
        node.getObjectValue<TreasuryFinancialAccountsResourceBalanceCash>(
            TreasuryFinancialAccountsResourceBalanceCash
                .createFromDiscriminatorValue);
    deserializerMap['inbound_pending'] = (node) => inboundPending = node
        .getObjectValue<TreasuryFinancialAccountsResourceBalanceInboundPending>(
            TreasuryFinancialAccountsResourceBalanceInboundPending
                .createFromDiscriminatorValue);
    deserializerMap['outbound_pending'] = (node) => outboundPending =
        node.getObjectValue<
                TreasuryFinancialAccountsResourceBalanceOutboundPending>(
            TreasuryFinancialAccountsResourceBalanceOutboundPending
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasuryFinancialAccountsResourceBalanceCash>(
        'cash', cash);
    writer.writeObjectValue<
            TreasuryFinancialAccountsResourceBalanceInboundPending>(
        'inbound_pending', inboundPending);
    writer.writeObjectValue<
            TreasuryFinancialAccountsResourceBalanceOutboundPending>(
        'outbound_pending', outboundPending);
    writer.writeAdditionalData(additionalData);
  }
}
