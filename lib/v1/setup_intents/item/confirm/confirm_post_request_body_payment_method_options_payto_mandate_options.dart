// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_amount.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_amount_type.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_end_date.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_payment_schedule.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_payments_per_period.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_purpose.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options_start_date.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount? amount;

  ///  The amount_type property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType?
      amountType;

  ///  The end_date property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate? endDate;

  ///  The payment_schedule property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose? purpose;

  ///  The start_date property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate?
      startDate;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        'start_date', startDate);
    writer.writeAdditionalData(additionalData);
  }
}
