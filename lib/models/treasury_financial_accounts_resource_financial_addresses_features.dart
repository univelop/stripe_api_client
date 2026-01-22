// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_aba_toggle_settings.dart';

/// auto generated
/// Settings related to Financial Addresses features on a Financial Account
class TreasuryFinancialAccountsResourceFinancialAddressesFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Toggle settings for enabling/disabling the ABA address feature
  TreasuryFinancialAccountsResourceAbaToggleSettings? aba;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [TreasuryFinancialAccountsResourceFinancialAddressesFeatures] and sets the default values.
  TreasuryFinancialAccountsResourceFinancialAddressesFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceFinancialAddressesFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceFinancialAddressesFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aba'] = (node) => aba =
        node.getObjectValue<TreasuryFinancialAccountsResourceAbaToggleSettings>(
            TreasuryFinancialAccountsResourceAbaToggleSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasuryFinancialAccountsResourceAbaToggleSettings>(
        'aba', aba);
    writer.writeAdditionalData(additionalData);
  }
}
