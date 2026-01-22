// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_platform_restrictions_inbound_flows.dart';
import './treasury_financial_accounts_resource_platform_restrictions_outbound_flows.dart';

/// auto generated
/// Restrictions that a Connect Platform has placed on this FinancialAccount.
class TreasuryFinancialAccountsResourcePlatformRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Restricts all inbound money movement.
  TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows?
      inboundFlows;

  ///  Restricts all outbound money movement.
  TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows?
      outboundFlows;

  /// Instantiates a new [TreasuryFinancialAccountsResourcePlatformRestrictions] and sets the default values.
  TreasuryFinancialAccountsResourcePlatformRestrictions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourcePlatformRestrictions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourcePlatformRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'inbound_flows'] = (node) => inboundFlows = node.getEnumValue<
            TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows>(
        (stringValue) =>
            TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'outbound_flows'] = (node) => outboundFlows = node.getEnumValue<
            TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows>(
        (stringValue) =>
            TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows>(
        'inbound_flows', inboundFlows, (e) => e?.value);
    writer.writeEnumValue<
            TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows>(
        'outbound_flows', outboundFlows, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
