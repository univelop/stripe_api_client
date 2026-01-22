// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_currency.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_mandate_options.dart';
import './confirm_post_request_body_payment_method_options_acss_debit_verification_method.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitCurrency? currency;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions?
      mandateOptions;

  ///  The verification_method property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod?
      verificationMethod;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitCurrency>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitCurrency.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod
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
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitCurrency>(
        'currency', currency, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebitVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
