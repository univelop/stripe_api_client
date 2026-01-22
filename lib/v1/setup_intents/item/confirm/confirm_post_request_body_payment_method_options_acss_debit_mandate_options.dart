// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_mandate_options_custom_mandate_url.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_mandate_options_default_for.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_mandate_options_payment_schedule.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_mandate_options_transaction_type.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_mandate_url property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl?
      customMandateUrl;

  ///  The default_for property
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>?
      defaultFor;

  ///  The interval_description property
  String? intervalDescription;

  ///  The payment_schedule property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The transaction_type property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'custom_mandate_url'] = (node) => customMandateUrl = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl
            .createFromDiscriminatorValue);
    deserializerMap[
        'default_for'] = (node) => defaultFor = node.getCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType
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
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        'custom_mandate_url', customMandateUrl);
    writer.writeCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        'default_for', defaultFor, (e) => e?.value);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
