// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_mandate_options_custom_mandate_url.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_mandate_options_default_for.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_mandate_options_payment_schedule.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_mandate_options_transaction_type.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_mandate_url property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl?
      customMandateUrl;

  ///  The default_for property
  Iterable<
          SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>?
      defaultFor;

  ///  The interval_description property
  String? intervalDescription;

  ///  The payment_schedule property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule?
      paymentSchedule;

  ///  The transaction_type property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'custom_mandate_url'] = (node) => customMandateUrl = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl
            .createFromDiscriminatorValue);
    deserializerMap[
        'default_for'] = (node) => defaultFor = node.getCollectionOfEnumValues<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap[
        'payment_schedule'] = (node) => paymentSchedule = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType
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
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl>(
        'custom_mandate_url', customMandateUrl);
    writer.writeCollectionOfEnumValues<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>(
        'default_for', defaultFor, (e) => e?.value);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
