// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_outbound_ach_toggle_settings.dart';
import './treasury_financial_accounts_resource_toggle_settings.dart';

/// auto generated
/// OutboundTransfers contains outbound transfers features for a FinancialAccount.
class TreasuryFinancialAccountsResourceOutboundTransfers
    implements AdditionalDataHolder, Parsable {
  ///  Toggle settings for enabling/disabling an outbound ACH specific feature
  TreasuryFinancialAccountsResourceOutboundAchToggleSettings? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Toggle settings for enabling/disabling a feature
  TreasuryFinancialAccountsResourceToggleSettings? usDomesticWire;

  /// Instantiates a new [TreasuryFinancialAccountsResourceOutboundTransfers] and sets the default values.
  TreasuryFinancialAccountsResourceOutboundTransfers() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceOutboundTransfers
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceOutboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node.getObjectValue<
            TreasuryFinancialAccountsResourceOutboundAchToggleSettings>(
        TreasuryFinancialAccountsResourceOutboundAchToggleSettings
            .createFromDiscriminatorValue);
    deserializerMap['us_domestic_wire'] = (node) => usDomesticWire =
        node.getObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
            TreasuryFinancialAccountsResourceToggleSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        TreasuryFinancialAccountsResourceOutboundAchToggleSettings>('ach', ach);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceToggleSettings>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
