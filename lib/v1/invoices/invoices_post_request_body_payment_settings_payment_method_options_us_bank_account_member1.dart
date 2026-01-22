// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_verification_method.dart';

/// auto generated
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections?
      financialConnections;

  ///  The verification_method property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1] and sets the default values.
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        (stringValue) =>
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1VerificationMethod
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
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeEnumValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
