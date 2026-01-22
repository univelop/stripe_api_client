// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_payouts_schedule_delay_days.dart';
import './with_account_post_request_body_settings_payouts_schedule_interval.dart';
import './with_account_post_request_body_settings_payouts_schedule_weekly_anchor.dart';
import './with_account_post_request_body_settings_payouts_schedule_weekly_payout_days.dart';

/// auto generated
class WithAccountPostRequestBodySettingsPayoutsSchedule
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The delay_days property
  WithAccountPostRequestBodySettingsPayoutsScheduleDelayDays? delayDays;

  ///  The interval property
  WithAccountPostRequestBodySettingsPayoutsScheduleInterval? interval;

  ///  The monthly_anchor property
  int? monthlyAnchor;

  ///  The monthly_payout_days property
  Iterable<int>? monthlyPayoutDays;

  ///  The weekly_anchor property
  WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyAnchor? weeklyAnchor;

  ///  The weekly_payout_days property
  Iterable<WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays>?
      weeklyPayoutDays;

  /// Instantiates a new [WithAccountPostRequestBodySettingsPayoutsSchedule] and sets the default values.
  WithAccountPostRequestBodySettingsPayoutsSchedule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsPayoutsSchedule
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsPayoutsSchedule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['delay_days'] = (node) => delayDays = node.getObjectValue<
            WithAccountPostRequestBodySettingsPayoutsScheduleDelayDays>(
        WithAccountPostRequestBodySettingsPayoutsScheduleDelayDays
            .createFromDiscriminatorValue);
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            WithAccountPostRequestBodySettingsPayoutsScheduleInterval>(
        (stringValue) =>
            WithAccountPostRequestBodySettingsPayoutsScheduleInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['monthly_anchor'] =
        (node) => monthlyAnchor = node.getIntValue();
    deserializerMap['monthly_payout_days'] = (node) =>
        monthlyPayoutDays = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['weekly_anchor'] = (node) => weeklyAnchor =
        node.getEnumValue<
                WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyAnchor>(
            (stringValue) =>
                WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyAnchor
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['weekly_payout_days'] = (node) => weeklyPayoutDays =
        node.getCollectionOfEnumValues<
                WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays>(
            (stringValue) =>
                WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays
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
            WithAccountPostRequestBodySettingsPayoutsScheduleDelayDays>(
        'delay_days', delayDays);
    writer.writeEnumValue<
            WithAccountPostRequestBodySettingsPayoutsScheduleInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('monthly_anchor', monthlyAnchor);
    writer.writeCollectionOfPrimitiveValues<int?>(
        'monthly_payout_days', monthlyPayoutDays);
    writer.writeEnumValue<
            WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyAnchor>(
        'weekly_anchor', weeklyAnchor, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            WithAccountPostRequestBodySettingsPayoutsScheduleWeeklyPayoutDays>(
        'weekly_payout_days', weeklyPayoutDays, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
