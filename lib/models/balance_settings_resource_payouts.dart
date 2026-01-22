// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_resource_payout_schedule.dart';
import './balance_settings_resource_payouts_minimum_balance_by_currency.dart';
import './balance_settings_resource_payouts_status.dart';

/// auto generated
class BalanceSettingsResourcePayouts implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
  BalanceSettingsResourcePayoutsMinimumBalanceByCurrency?
      minimumBalanceByCurrency;

  ///  Details on when funds from charges are available, and when they are paid out to an external account. See our [Setting Bank and Debit Card Payouts](https://docs.stripe.com/connect/bank-transfers#payout-information) documentation for details.
  BalanceSettingsResourcePayoutSchedule? schedule;

  ///  The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
  String? statementDescriptor;

  ///  Whether the funds in this account can be paid out.
  BalanceSettingsResourcePayoutsStatus? status;

  /// Instantiates a new [BalanceSettingsResourcePayouts] and sets the default values.
  BalanceSettingsResourcePayouts() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsResourcePayouts createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceSettingsResourcePayouts();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['minimum_balance_by_currency'] = (node) =>
        minimumBalanceByCurrency = node.getObjectValue<
                BalanceSettingsResourcePayoutsMinimumBalanceByCurrency>(
            BalanceSettingsResourcePayoutsMinimumBalanceByCurrency
                .createFromDiscriminatorValue);
    deserializerMap['schedule'] = (node) => schedule =
        node.getObjectValue<BalanceSettingsResourcePayoutSchedule>(
            BalanceSettingsResourcePayoutSchedule.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<BalanceSettingsResourcePayoutsStatus>((stringValue) =>
            BalanceSettingsResourcePayoutsStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BalanceSettingsResourcePayoutsMinimumBalanceByCurrency>(
        'minimum_balance_by_currency', minimumBalanceByCurrency);
    writer.writeObjectValue<BalanceSettingsResourcePayoutSchedule>(
        'schedule', schedule);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeEnumValue<BalanceSettingsResourcePayoutsStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
