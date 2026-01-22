// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_financial_connections.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_mandate_options.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_networks.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_verification_method.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections?
      financialConnections;

  ///  The mandate_options property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions?
      mandateOptions;

  ///  The networks property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks? networks;

  ///  The verification_method property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod?
      verificationMethod;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['networks'] = (node) => networks = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks>(
        WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks
            .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod
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
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks>(
        'networks', networks);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
