// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_mandate_options_acss_debit_payment_schedule.dart';
import './payment_intent_payment_method_options_mandate_options_acss_debit_transaction_type.dart';

/// auto generated
class PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A URL for custom mandate text
  String? customMandateUrl;

  ///  Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
  String? intervalDescription;

  ///  Payment schedule for the mandate.
  PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule?
      paymentSchedule;

  ///  Transaction type of the mandate.
  PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType?
      transactionType;

  /// Instantiates a new [PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit] and sets the default values.
  PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_mandate_url'] =
        (node) => customMandateUrl = node.getStringValue();
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule>(
        (stringValue) =>
            PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType>(
        (stringValue) =>
            PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('custom_mandate_url', customMandateUrl);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
