// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_us_bank_account_financial_connections.dart';
import './setup_intents_post_request_body_payment_method_options_us_bank_account_mandate_options.dart';
import './setup_intents_post_request_body_payment_method_options_us_bank_account_networks.dart';
import './setup_intents_post_request_body_payment_method_options_us_bank_account_verification_method.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections?
      financialConnections;

  ///  The mandate_options property
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions?
      mandateOptions;

  ///  The networks property
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks?
      networks;

  ///  The verification_method property
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod?
      verificationMethod;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['networks'] = (node) => networks = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks
            .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod
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
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks>(
        'networks', networks);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
