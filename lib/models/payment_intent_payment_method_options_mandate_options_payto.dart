// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_mandate_options_payto_amount_type.dart';
import './payment_intent_payment_method_options_mandate_options_payto_payment_schedule.dart';
import './payment_intent_payment_method_options_mandate_options_payto_purpose.dart';

/// auto generated
class PaymentIntentPaymentMethodOptionsMandateOptionsPayto
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount that will be collected. It is required when `amount_type` is `fixed`.
  int? amount;

  ///  The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
  PaymentIntentPaymentMethodOptionsMandateOptionsPaytoAmountType? amountType;

  ///  Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
  String? endDate;

  ///  The periodicity at which payments will be collected. Defaults to `adhoc`.
  PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule?
      paymentSchedule;

  ///  The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
  int? paymentsPerPeriod;

  ///  The purpose for which payments are made. Has a default value based on your merchant category code.
  PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPurpose? purpose;

  /// Instantiates a new [PaymentIntentPaymentMethodOptionsMandateOptionsPayto] and sets the default values.
  PaymentIntentPaymentMethodOptionsMandateOptionsPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsMandateOptionsPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentPaymentMethodOptionsMandateOptionsPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoAmountType>(
        (stringValue) =>
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule>(
        (stringValue) =>
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payments_per_period'] =
        (node) => paymentsPerPeriod = node.getIntValue();
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPurpose>(
        (stringValue) =>
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPurpose.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeStringValue('end_date', endDate);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeIntValue('payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
