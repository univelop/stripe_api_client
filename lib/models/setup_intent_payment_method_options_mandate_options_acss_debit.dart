// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_mandate_options_acss_debit_default_for.dart';
import './setup_intent_payment_method_options_mandate_options_acss_debit_payment_schedule.dart';
import './setup_intent_payment_method_options_mandate_options_acss_debit_transaction_type.dart';

/// auto generated
class SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A URL for custom mandate text
  String? customMandateUrl;

  ///  List of Stripe products where this mandate can be selected automatically.
  Iterable<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor>?
      defaultFor;

  ///  Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
  String? intervalDescription;

  ///  Payment schedule for the mandate.
  SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule?
      paymentSchedule;

  ///  Transaction type of the mandate.
  SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType?
      transactionType;

  /// Instantiates a new [SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit] and sets the default values.
  SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_mandate_url'] =
        (node) => customMandateUrl = node.getStringValue();
    deserializerMap[
        'default_for'] = (node) => defaultFor = node.getCollectionOfEnumValues<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor>(
        (stringValue) =>
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule>(
        (stringValue) =>
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType>(
        (stringValue) =>
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType
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
    writer.writeCollectionOfEnumValues<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor>(
        'default_for', defaultFor, (e) => e?.value);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
