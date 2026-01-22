// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer_schedule_weekly_payout_days.dart';

/// auto generated
class TransferSchedule implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The number of days charges for the account will be held before being paid out.
  int? delayDays;

  ///  How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
  String? interval;

  ///  The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
  int? monthlyAnchor;

  ///  The days of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
  Iterable<int>? monthlyPayoutDays;

  ///  The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
  String? weeklyAnchor;

  ///  The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
  Iterable<TransferScheduleWeeklyPayoutDays>? weeklyPayoutDays;

  /// Instantiates a new [TransferSchedule] and sets the default values.
  TransferSchedule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransferSchedule createFromDiscriminatorValue(ParseNode parseNode) {
    return TransferSchedule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['delay_days'] = (node) => delayDays = node.getIntValue();
    deserializerMap['interval'] = (node) => interval = node.getStringValue();
    deserializerMap['monthly_anchor'] =
        (node) => monthlyAnchor = node.getIntValue();
    deserializerMap['monthly_payout_days'] = (node) =>
        monthlyPayoutDays = node.getCollectionOfPrimitiveValues<int>();
    deserializerMap['weekly_anchor'] =
        (node) => weeklyAnchor = node.getStringValue();
    deserializerMap['weekly_payout_days'] = (node) => weeklyPayoutDays =
        node.getCollectionOfEnumValues<TransferScheduleWeeklyPayoutDays>(
            (stringValue) => TransferScheduleWeeklyPayoutDays.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('delay_days', delayDays);
    writer.writeStringValue('interval', interval);
    writer.writeIntValue('monthly_anchor', monthlyAnchor);
    writer.writeCollectionOfPrimitiveValues<int?>(
        'monthly_payout_days', monthlyPayoutDays);
    writer.writeStringValue('weekly_anchor', weeklyAnchor);
    writer.writeCollectionOfEnumValues<TransferScheduleWeeklyPayoutDays>(
        'weekly_payout_days', weeklyPayoutDays, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
