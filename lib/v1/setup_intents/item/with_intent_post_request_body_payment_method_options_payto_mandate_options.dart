// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_amount.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_amount_type.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_end_date.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_payment_schedule.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_payments_per_period.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_purpose.dart';
import './with_intent_post_request_body_payment_method_options_payto_mandate_options_start_date.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount?
      amount;

  ///  The amount_type property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType?
      amountType;

  ///  The end_date property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate?
      endDate;

  ///  The payment_schedule property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose?
      purpose;

  ///  The start_date property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate?
      startDate;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        'start_date', startDate);
    writer.writeAdditionalData(additionalData);
  }
}
