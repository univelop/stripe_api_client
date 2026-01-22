// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_inbound_ach_toggle_settings.dart';

/// auto generated
/// InboundTransfers contains inbound transfers features for a FinancialAccount.
class TreasuryFinancialAccountsResourceInboundTransfers
    implements AdditionalDataHolder, Parsable {
  ///  Toggle settings for enabling/disabling an inbound ACH specific feature
  TreasuryFinancialAccountsResourceInboundAchToggleSettings? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [TreasuryFinancialAccountsResourceInboundTransfers] and sets the default values.
  TreasuryFinancialAccountsResourceInboundTransfers() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceInboundTransfers
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceInboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node.getObjectValue<
            TreasuryFinancialAccountsResourceInboundAchToggleSettings>(
        TreasuryFinancialAccountsResourceInboundAchToggleSettings
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        TreasuryFinancialAccountsResourceInboundAchToggleSettings>('ach', ach);
    writer.writeAdditionalData(additionalData);
  }
}
