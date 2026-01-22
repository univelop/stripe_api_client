// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_us_bank_account_linked_account_options.dart';
import './invoice_payment_method_options_us_bank_account_verification_method.dart';

/// auto generated
class InvoicePaymentMethodOptionsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions?
      financialConnections;

  ///  Bank account verification method.
  InvoicePaymentMethodOptionsUsBankAccountVerificationMethod?
      verificationMethod;

  /// Instantiates a new [InvoicePaymentMethodOptionsUsBankAccount] and sets the default values.
  InvoicePaymentMethodOptionsUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsUsBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicePaymentMethodOptionsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions>(
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
                .createFromDiscriminatorValue);
    deserializerMap['verification_method'] = (node) => verificationMethod =
        node.getEnumValue<
                InvoicePaymentMethodOptionsUsBankAccountVerificationMethod>(
            (stringValue) =>
                InvoicePaymentMethodOptionsUsBankAccountVerificationMethod
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
            InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions>(
        'financial_connections', financialConnections);
    writer.writeEnumValue<
            InvoicePaymentMethodOptionsUsBankAccountVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
