// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_post_request_body_payments_payouts_schedule_interval.dart';
import './balance_settings_post_request_body_payments_payouts_schedule_weekly_payout_days.dart';

/// auto generated
class BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The interval property
  BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleInterval? interval;

  ///  The monthly_payout_days property
  Iterable<int>? monthlyPayoutDays;

  ///  The weekly_payout_days property
  Iterable<
          BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleWeeklyPayoutDays>?
      weeklyPayoutDays;

  /// Instantiates a new [BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule] and sets the default values.
  BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleInterval>(
        (stringValue) =>
            BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['monthly_payout_days'] = (node) =>
        monthlyPayoutDays = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['weekly_payout_days'] = (node) => weeklyPayoutDays =
        node.getCollectionOfEnumValues<
                BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleWeeklyPayoutDays>(
            (stringValue) =>
                BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleWeeklyPayoutDays
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
            BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<int?>(
        'monthly_payout_days', monthlyPayoutDays);
    writer.writeCollectionOfEnumValues<
            BalanceSettingsPostRequestBodyPaymentsPayoutsScheduleWeeklyPayoutDays>(
        'weekly_payout_days', weeklyPayoutDays, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
