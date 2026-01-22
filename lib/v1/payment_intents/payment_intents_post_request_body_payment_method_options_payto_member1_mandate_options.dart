// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_payto_member1_mandate_options_amount.dart';
import './payment_intents_post_request_body_payment_method_options_payto_member1_mandate_options_amount_type.dart';
import './payment_intents_post_request_body_payment_method_options_payto_member1_mandate_options_end_date.dart';
import './payment_intents_post_request_body_payment_method_options_payto_member1_mandate_options_payment_schedule.dart';
import './payment_intents_post_request_body_payment_method_options_payto_member1_mandate_options_payments_per_period.dart';
import './payment_intents_post_request_body_payment_method_options_payto_member1_mandate_options_purpose.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount?
      amount;

  ///  The amount_type property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType?
      amountType;

  ///  The end_date property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate?
      endDate;

  ///  The payment_schedule property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose?
      purpose;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
