// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_financial_connections.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_mandate_options.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_networks.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_verification_method.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections?
      financialConnections;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions?
      mandateOptions;

  ///  The networks property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks? networks;

  ///  The verification_method property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod?
      verificationMethod;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['networks'] = (node) => networks = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks>(
        ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks
            .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod
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
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountNetworks>(
        'networks', networks);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
