// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_resource_payout_schedule_interval.dart';
import './balance_settings_resource_payout_schedule_weekly_payout_days.dart';

/// auto generated
class BalanceSettingsResourcePayoutSchedule
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
  BalanceSettingsResourcePayoutScheduleInterval? interval;

  ///  The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
  Iterable<int>? monthlyPayoutDays;

  ///  The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
  Iterable<BalanceSettingsResourcePayoutScheduleWeeklyPayoutDays>?
      weeklyPayoutDays;

  /// Instantiates a new [BalanceSettingsResourcePayoutSchedule] and sets the default values.
  BalanceSettingsResourcePayoutSchedule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsResourcePayoutSchedule createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceSettingsResourcePayoutSchedule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<BalanceSettingsResourcePayoutScheduleInterval>(
            (stringValue) => BalanceSettingsResourcePayoutScheduleInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['monthly_payout_days'] = (node) =>
        monthlyPayoutDays = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['weekly_payout_days'] = (node) => weeklyPayoutDays =
        node.getCollectionOfEnumValues<
                BalanceSettingsResourcePayoutScheduleWeeklyPayoutDays>(
            (stringValue) =>
                BalanceSettingsResourcePayoutScheduleWeeklyPayoutDays.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<BalanceSettingsResourcePayoutScheduleInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<int?>(
        'monthly_payout_days', monthlyPayoutDays);
    writer.writeCollectionOfEnumValues<
            BalanceSettingsResourcePayoutScheduleWeeklyPayoutDays>(
        'weekly_payout_days', weeklyPayoutDays, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
