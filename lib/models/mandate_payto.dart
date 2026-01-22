// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './mandate_payto_amount_type.dart';
import './mandate_payto_payment_schedule.dart';
import './mandate_payto_purpose.dart';

/// auto generated
class MandatePayto implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount that will be collected. It is required when `amount_type` is `fixed`.
  int? amount;

  ///  The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
  MandatePaytoAmountType? amountType;

  ///  Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
  String? endDate;

  ///  The periodicity at which payments will be collected. Defaults to `adhoc`.
  MandatePaytoPaymentSchedule? paymentSchedule;

  ///  The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
  int? paymentsPerPeriod;

  ///  The purpose for which payments are made. Has a default value based on your merchant category code.
  MandatePaytoPurpose? purpose;

  ///  Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
  String? startDate;

  /// Instantiates a new [MandatePayto] and sets the default values.
  MandatePayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MandatePayto createFromDiscriminatorValue(ParseNode parseNode) {
    return MandatePayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType =
        node.getEnumValue<MandatePaytoAmountType>((stringValue) =>
            MandatePaytoAmountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getStringValue();
    deserializerMap['payment_schedule'] = (node) => paymentSchedule =
        node.getEnumValue<MandatePaytoPaymentSchedule>((stringValue) =>
            MandatePaytoPaymentSchedule.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payments_per_period'] =
        (node) => paymentsPerPeriod = node.getIntValue();
    deserializerMap['purpose'] = (node) => purpose =
        node.getEnumValue<MandatePaytoPurpose>((stringValue) =>
            MandatePaytoPurpose.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<MandatePaytoAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeStringValue('end_date', endDate);
    writer.writeEnumValue<MandatePaytoPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeIntValue('payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<MandatePaytoPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeStringValue('start_date', startDate);
    writer.writeAdditionalData(additionalData);
  }
}
