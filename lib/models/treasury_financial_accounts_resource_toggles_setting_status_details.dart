// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_toggles_setting_status_details_code.dart';
import './treasury_financial_accounts_resource_toggles_setting_status_details_resolution.dart';
import './treasury_financial_accounts_resource_toggles_setting_status_details_restriction.dart';

/// auto generated
/// Additional details on the FinancialAccount Features information.
class TreasuryFinancialAccountsResourceTogglesSettingStatusDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Represents the reason why the status is `pending` or `restricted`.
  TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsCode? code;

  ///  Represents what the user should do, if anything, to activate the Feature.
  TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsResolution?
      resolution;

  ///  The `platform_restrictions` that are restricting this Feature.
  TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsRestriction?
      restriction;

  /// Instantiates a new [TreasuryFinancialAccountsResourceTogglesSettingStatusDetails] and sets the default values.
  TreasuryFinancialAccountsResourceTogglesSettingStatusDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceTogglesSettingStatusDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceTogglesSettingStatusDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code = node.getEnumValue<
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsCode>(
        (stringValue) =>
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsCode
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['resolution'] = (node) => resolution = node.getEnumValue<
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsResolution>(
        (stringValue) =>
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsResolution
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['restriction'] = (node) => restriction = node.getEnumValue<
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsRestriction>(
        (stringValue) =>
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsRestriction
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
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsCode>(
        'code', code, (e) => e?.value);
    writer.writeEnumValue<
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsResolution>(
        'resolution', resolution, (e) => e?.value);
    writer.writeEnumValue<
            TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsRestriction>(
        'restriction', restriction, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
