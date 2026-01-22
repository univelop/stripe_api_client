// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1_mandate_options_amount.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1_mandate_options_amount_type.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1_mandate_options_end_date.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1_mandate_options_payment_schedule.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1_mandate_options_payments_per_period.dart';
import './with_intent_post_request_body_payment_method_options_payto_member1_mandate_options_purpose.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount?
      amount;

  ///  The amount_type property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType?
      amountType;

  ///  The end_date property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate?
      endDate;

  ///  The payment_schedule property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose?
      purpose;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod>(
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose
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
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
