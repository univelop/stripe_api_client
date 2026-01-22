// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_financial_accounts_resource_financial_addresses_features.dart';
import '../treasury_financial_accounts_resource_inbound_transfers.dart';
import '../treasury_financial_accounts_resource_outbound_payments.dart';
import '../treasury_financial_accounts_resource_outbound_transfers.dart';
import '../treasury_financial_accounts_resource_toggle_settings.dart';
import './financial_account_features_object.dart';

/// auto generated
/// Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.Stripe or the platform can control Features via the requested field.
class FinancialAccountFeatures implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Toggle settings for enabling/disabling a feature
  TreasuryFinancialAccountsResourceToggleSettings? cardIssuing;

  ///  Toggle settings for enabling/disabling a feature
  TreasuryFinancialAccountsResourceToggleSettings? depositInsurance;

  ///  Settings related to Financial Addresses features on a Financial Account
  TreasuryFinancialAccountsResourceFinancialAddressesFeatures?
      financialAddresses;

  ///  InboundTransfers contains inbound transfers features for a FinancialAccount.
  TreasuryFinancialAccountsResourceInboundTransfers? inboundTransfers;

  ///  Toggle settings for enabling/disabling a feature
  TreasuryFinancialAccountsResourceToggleSettings? intraStripeFlows;

  ///  String representing the object's type. Objects of the same type share the same value.
  FinancialAccountFeaturesObject? object;

  ///  Settings related to Outbound Payments features on a Financial Account
  TreasuryFinancialAccountsResourceOutboundPayments? outboundPayments;

  ///  OutboundTransfers contains outbound transfers features for a FinancialAccount.
  TreasuryFinancialAccountsResourceOutboundTransfers? outboundTransfers;

  /// Instantiates a new [FinancialAccountFeatures] and sets the default values.
  FinancialAccountFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialAccountFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinancialAccountFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
            TreasuryFinancialAccountsResourceToggleSettings
                .createFromDiscriminatorValue);
    deserializerMap['deposit_insurance'] = (node) => depositInsurance =
        node.getObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
            TreasuryFinancialAccountsResourceToggleSettings
                .createFromDiscriminatorValue);
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getObjectValue<
                TreasuryFinancialAccountsResourceFinancialAddressesFeatures>(
            TreasuryFinancialAccountsResourceFinancialAddressesFeatures
                .createFromDiscriminatorValue);
    deserializerMap['inbound_transfers'] = (node) => inboundTransfers =
        node.getObjectValue<TreasuryFinancialAccountsResourceInboundTransfers>(
            TreasuryFinancialAccountsResourceInboundTransfers
                .createFromDiscriminatorValue);
    deserializerMap['intra_stripe_flows'] = (node) => intraStripeFlows =
        node.getObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
            TreasuryFinancialAccountsResourceToggleSettings
                .createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FinancialAccountFeaturesObject>((stringValue) =>
            FinancialAccountFeaturesObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['outbound_payments'] = (node) => outboundPayments =
        node.getObjectValue<TreasuryFinancialAccountsResourceOutboundPayments>(
            TreasuryFinancialAccountsResourceOutboundPayments
                .createFromDiscriminatorValue);
    deserializerMap['outbound_transfers'] = (node) => outboundTransfers =
        node.getObjectValue<TreasuryFinancialAccountsResourceOutboundTransfers>(
            TreasuryFinancialAccountsResourceOutboundTransfers
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
        'deposit_insurance', depositInsurance);
    writer.writeObjectValue<
            TreasuryFinancialAccountsResourceFinancialAddressesFeatures>(
        'financial_addresses', financialAddresses);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceInboundTransfers>(
        'inbound_transfers', inboundTransfers);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
        'intra_stripe_flows', intraStripeFlows);
    writer.writeEnumValue<FinancialAccountFeaturesObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceOutboundPayments>(
        'outbound_payments', outboundPayments);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceOutboundTransfers>(
        'outbound_transfers', outboundTransfers);
    writer.writeAdditionalData(additionalData);
  }
}
