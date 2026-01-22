// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_amount.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_amount_type.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_end_date.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_payment_schedule.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_payments_per_period.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_purpose.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options_start_date.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount? amount;

  ///  The amount_type property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType?
      amountType;

  ///  The end_date property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate?
      endDate;

  ///  The payment_schedule property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose?
      purpose;

  ///  The start_date property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate?
      startDate;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        'start_date', startDate);
    writer.writeAdditionalData(additionalData);
  }
}
