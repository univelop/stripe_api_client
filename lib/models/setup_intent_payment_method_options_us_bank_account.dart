// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './linked_account_options_common.dart';
import './payment_method_options_us_bank_account_mandate_options.dart';
import './setup_intent_payment_method_options_us_bank_account_verification_method.dart';

/// auto generated
class SetupIntentPaymentMethodOptionsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  LinkedAccountOptionsCommon? financialConnections;

  ///  The mandate_options property
  PaymentMethodOptionsUsBankAccountMandateOptions? mandateOptions;

  ///  Bank account verification method.
  SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod?
      verificationMethod;

  /// Instantiates a new [SetupIntentPaymentMethodOptionsUsBankAccount] and sets the default values.
  SetupIntentPaymentMethodOptionsUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentPaymentMethodOptionsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<LinkedAccountOptionsCommon>(
            LinkedAccountOptionsCommon.createFromDiscriminatorValue);
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<PaymentMethodOptionsUsBankAccountMandateOptions>(
            PaymentMethodOptionsUsBankAccountMandateOptions
                .createFromDiscriminatorValue);
    deserializerMap['verification_method'] = (node) => verificationMethod =
        node.getEnumValue<
                SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod>(
            (stringValue) =>
                SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<LinkedAccountOptionsCommon>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<PaymentMethodOptionsUsBankAccountMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
