// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_mandate_options_custom_mandate_url.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_mandate_options_default_for.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_mandate_options_payment_schedule.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit_mandate_options_transaction_type.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_mandate_url property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl?
      customMandateUrl;

  ///  The default_for property
  Iterable<
          WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>?
      defaultFor;

  ///  The interval_description property
  String? intervalDescription;

  ///  The payment_schedule property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The transaction_type property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'custom_mandate_url'] = (node) => customMandateUrl = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl
            .createFromDiscriminatorValue);
    deserializerMap[
        'default_for'] = (node) => defaultFor = node.getCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType
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
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        'custom_mandate_url', customMandateUrl);
    writer.writeCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        'default_for', defaultFor, (e) => e?.value);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
