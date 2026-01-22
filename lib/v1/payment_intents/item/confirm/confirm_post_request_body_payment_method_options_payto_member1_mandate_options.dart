// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_payto_member1_mandate_options_amount.dart';
import './confirm_post_request_body_payment_method_options_payto_member1_mandate_options_amount_type.dart';
import './confirm_post_request_body_payment_method_options_payto_member1_mandate_options_end_date.dart';
import './confirm_post_request_body_payment_method_options_payto_member1_mandate_options_payment_schedule.dart';
import './confirm_post_request_body_payment_method_options_payto_member1_mandate_options_payments_per_period.dart';
import './confirm_post_request_body_payment_method_options_payto_member1_mandate_options_purpose.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount?
      amount;

  ///  The amount_type property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType?
      amountType;

  ///  The end_date property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate?
      endDate;

  ///  The payment_schedule property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The payments_per_period property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod?
      paymentsPerPeriod;

  ///  The purpose property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose?
      purpose;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount
            .createFromDiscriminatorValue);
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['end_date'] = (node) => endDate = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate
            .createFromDiscriminatorValue);
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'payments_per_period'] = (node) => paymentsPerPeriod = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod>(
        ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod
            .createFromDiscriminatorValue);
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose
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
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmount>(
        'amount', amount);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsEndDate>(
        'end_date', endDate);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod>(
        'payments_per_period', paymentsPerPeriod);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
