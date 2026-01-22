// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_customer_balance_bank_transfer_eu_bank_transfer_country.dart';

/// auto generated
class InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
  InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry?
      country;

  /// Instantiates a new [InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer] and sets the default values.
  InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getEnumValue<
            InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry>(
        (stringValue) =>
            InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry
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
            InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransferCountry>(
        'country', country, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
