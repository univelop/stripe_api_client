// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_settings_payouts_schedule_delay_days.dart';
import './accounts_post_request_body_settings_payouts_schedule_interval.dart';
import './accounts_post_request_body_settings_payouts_schedule_weekly_anchor.dart';
import './accounts_post_request_body_settings_payouts_schedule_weekly_payout_days.dart';

/// auto generated
class AccountsPostRequestBodySettingsPayoutsSchedule
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The delay_days property
  AccountsPostRequestBodySettingsPayoutsScheduleDelayDays? delayDays;

  ///  The interval property
  AccountsPostRequestBodySettingsPayoutsScheduleInterval? interval;

  ///  The monthly_anchor property
  int? monthlyAnchor;

  ///  The monthly_payout_days property
  Iterable<int>? monthlyPayoutDays;

  ///  The weekly_anchor property
  AccountsPostRequestBodySettingsPayoutsScheduleWeeklyAnchor? weeklyAnchor;

  ///  The weekly_payout_days property
  Iterable<AccountsPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays>?
      weeklyPayoutDays;

  /// Instantiates a new [AccountsPostRequestBodySettingsPayoutsSchedule] and sets the default values.
  AccountsPostRequestBodySettingsPayoutsSchedule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodySettingsPayoutsSchedule
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodySettingsPayoutsSchedule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['delay_days'] = (node) => delayDays = node.getObjectValue<
            AccountsPostRequestBodySettingsPayoutsScheduleDelayDays>(
        AccountsPostRequestBodySettingsPayoutsScheduleDelayDays
            .createFromDiscriminatorValue);
    deserializerMap['interval'] = (node) => interval = node
        .getEnumValue<AccountsPostRequestBodySettingsPayoutsScheduleInterval>(
            (stringValue) =>
                AccountsPostRequestBodySettingsPayoutsScheduleInterval.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['monthly_anchor'] =
        (node) => monthlyAnchor = node.getIntValue();
    deserializerMap['monthly_payout_days'] = (node) =>
        monthlyPayoutDays = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['weekly_anchor'] = (node) => weeklyAnchor =
        node.getEnumValue<
                AccountsPostRequestBodySettingsPayoutsScheduleWeeklyAnchor>(
            (stringValue) =>
                AccountsPostRequestBodySettingsPayoutsScheduleWeeklyAnchor
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['weekly_payout_days'] = (node) => weeklyPayoutDays =
        node.getCollectionOfEnumValues<
                AccountsPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays>(
            (stringValue) =>
                AccountsPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            AccountsPostRequestBodySettingsPayoutsScheduleDelayDays>(
        'delay_days', delayDays);
    writer
        .writeEnumValue<AccountsPostRequestBodySettingsPayoutsScheduleInterval>(
            'interval', interval, (e) => e?.value);
    writer.writeIntValue('monthly_anchor', monthlyAnchor);
    writer.writeCollectionOfPrimitiveValues<int?>(
        'monthly_payout_days', monthlyPayoutDays);
    writer.writeEnumValue<
            AccountsPostRequestBodySettingsPayoutsScheduleWeeklyAnchor>(
        'weekly_anchor', weeklyAnchor, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            AccountsPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays>(
        'weekly_payout_days', weeklyPayoutDays, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
