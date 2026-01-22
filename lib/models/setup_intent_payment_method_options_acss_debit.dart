// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_acss_debit_currency.dart';
import './setup_intent_payment_method_options_acss_debit_verification_method.dart';
import './setup_intent_payment_method_options_mandate_options_acss_debit.dart';

/// auto generated
class SetupIntentPaymentMethodOptionsAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Currency supported by the bank account
  SetupIntentPaymentMethodOptionsAcssDebitCurrency? currency;

  ///  The mandate_options property
  SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit? mandateOptions;

  ///  Bank account verification method.
  SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod?
      verificationMethod;

  /// Instantiates a new [SetupIntentPaymentMethodOptionsAcssDebit] and sets the default values.
  SetupIntentPaymentMethodOptionsAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsAcssDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentPaymentMethodOptionsAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency =
        node.getEnumValue<SetupIntentPaymentMethodOptionsAcssDebitCurrency>(
            (stringValue) => SetupIntentPaymentMethodOptionsAcssDebitCurrency
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['mandate_options'] = (node) => mandateOptions = node
        .getObjectValue<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit>(
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['verification_method'] = (node) => verificationMethod =
        node.getEnumValue<
                SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod>(
            (stringValue) =>
                SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SetupIntentPaymentMethodOptionsAcssDebitCurrency>(
        'currency', currency, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
