// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_account_reference.dart';
import './subscription_schedules_resource_default_settings_automatic_tax_disabled_reason.dart';

/// auto generated
class SubscriptionSchedulesResourceDefaultSettingsAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If Stripe disabled automatic tax, this enum describes why.
  SubscriptionSchedulesResourceDefaultSettingsAutomaticTaxDisabledReason?
      disabledReason;

  ///  Whether Stripe automatically computes tax on invoices created during this phase.
  bool? enabled;

  ///  The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
  ConnectAccountReference? liability;

  /// Instantiates a new [SubscriptionSchedulesResourceDefaultSettingsAutomaticTax] and sets the default values.
  SubscriptionSchedulesResourceDefaultSettingsAutomaticTax()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesResourceDefaultSettingsAutomaticTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesResourceDefaultSettingsAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'disabled_reason'] = (node) => disabledReason = node.getEnumValue<
            SubscriptionSchedulesResourceDefaultSettingsAutomaticTaxDisabledReason>(
        (stringValue) =>
            SubscriptionSchedulesResourceDefaultSettingsAutomaticTaxDisabledReason
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability =
        node.getObjectValue<ConnectAccountReference>(
            ConnectAccountReference.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SubscriptionSchedulesResourceDefaultSettingsAutomaticTaxDisabledReason>(
        'disabled_reason', disabledReason, (e) => e?.value);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<ConnectAccountReference>('liability', liability);
    writer.writeAdditionalData(additionalData);
  }
}
