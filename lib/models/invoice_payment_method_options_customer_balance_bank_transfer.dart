// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_customer_balance_bank_transfer_eu_bank_transfer.dart';

/// auto generated
class InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eu_bank_transfer property
  InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer?
      euBankTransfer;

  ///  The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
  String? type_;

  /// Instantiates a new [InvoicePaymentMethodOptionsCustomerBalanceBankTransfer] and sets the default values.
  InvoicePaymentMethodOptionsCustomerBalanceBankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicePaymentMethodOptionsCustomerBalanceBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'eu_bank_transfer'] = (node) => euBankTransfer = node.getObjectValue<
            InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer>(
        InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
