// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_amount.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_amount_type.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_end_date.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_payment_schedule.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_payments_per_period.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_purpose.dart';
import './setup_intents_post_request_body_payment_method_options_payto_mandate_options_start_date.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount?
      amount;

  ///  The amount_type property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType?
      amountType;

  ///  The end_date property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate?
      endDate;

  ///  The payment_schedule property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose?
      purpose;

  ///  The start_date property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate?
      startDate;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaytoMandateOptionsStartDate>(
        'start_date', startDate);
    writer.writeAdditionalData(additionalData);
  }
}
