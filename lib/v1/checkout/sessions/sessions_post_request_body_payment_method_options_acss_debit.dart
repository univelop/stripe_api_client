// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_currency.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_mandate_options.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_setup_future_usage.dart';
import './sessions_post_request_body_payment_method_options_acss_debit_verification_method.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitCurrency? currency;

  ///  The mandate_options property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions?
      mandateOptions;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitSetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod?
      verificationMethod;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsAcssDebit] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitCurrency>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitCurrency.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions>(
        SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitCurrency>(
        'currency', currency, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
