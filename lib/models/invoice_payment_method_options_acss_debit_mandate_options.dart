// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_acss_debit_mandate_options_transaction_type.dart';

/// auto generated
class InvoicePaymentMethodOptionsAcssDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Transaction type of the mandate.
  InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [InvoicePaymentMethodOptionsAcssDebitMandateOptions] and sets the default values.
  InvoicePaymentMethodOptionsAcssDebitMandateOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsAcssDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicePaymentMethodOptionsAcssDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        (stringValue) =>
            InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType
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
            InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
