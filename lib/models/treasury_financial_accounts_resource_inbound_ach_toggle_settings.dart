// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_inbound_ach_toggle_settings_status.dart';
import './treasury_financial_accounts_resource_toggles_setting_status_details.dart';

/// auto generated
/// Toggle settings for enabling/disabling an inbound ACH specific feature
class TreasuryFinancialAccountsResourceInboundAchToggleSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the FinancialAccount should have the Feature.
  bool? requested;

  ///  Whether the Feature is operational.
  TreasuryFinancialAccountsResourceInboundAchToggleSettingsStatus? status;

  ///  Additional details; includes at least one entry when the status is not `active`.
  Iterable<TreasuryFinancialAccountsResourceTogglesSettingStatusDetails>?
      statusDetails;

  /// Instantiates a new [TreasuryFinancialAccountsResourceInboundAchToggleSettings] and sets the default values.
  TreasuryFinancialAccountsResourceInboundAchToggleSettings()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceInboundAchToggleSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceInboundAchToggleSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['requested'] = (node) => requested = node.getBoolValue();
    deserializerMap['status'] = (node) => status = node.getEnumValue<
            TreasuryFinancialAccountsResourceInboundAchToggleSettingsStatus>(
        (stringValue) =>
            TreasuryFinancialAccountsResourceInboundAchToggleSettingsStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status_details'] = (node) => statusDetails =
        node.getCollectionOfObjectValues<
                TreasuryFinancialAccountsResourceTogglesSettingStatusDetails>(
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('requested', value: requested);
    writer.writeEnumValue<
            TreasuryFinancialAccountsResourceInboundAchToggleSettingsStatus>(
        'status', status, (e) => e?.value);
    writer.writeCollectionOfObjectValues<
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetails>(
        'status_details', statusDetails);
    writer.writeAdditionalData(additionalData);
  }
}
