// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_acss_debit_mandate_options_custom_mandate_url.dart';
import './setup_intents_post_request_body_payment_method_options_acss_debit_mandate_options_default_for.dart';
import './setup_intents_post_request_body_payment_method_options_acss_debit_mandate_options_payment_schedule.dart';
import './setup_intents_post_request_body_payment_method_options_acss_debit_mandate_options_transaction_type.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_mandate_url property
  SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl?
      customMandateUrl;

  ///  The default_for property
  Iterable<
          SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>?
      defaultFor;

  ///  The interval_description property
  String? intervalDescription;

  ///  The payment_schedule property
  SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The transaction_type property
  SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'custom_mandate_url'] = (node) => customMandateUrl = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl
            .createFromDiscriminatorValue);
    deserializerMap[
        'default_for'] = (node) => defaultFor = node.getCollectionOfEnumValues<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType
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
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        'custom_mandate_url', customMandateUrl);
    writer.writeCollectionOfEnumValues<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        'default_for', defaultFor, (e) => e?.value);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
