// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_payment_method_options_customer_balance_bank_transfer.dart';
import './invoice_payment_method_options_customer_balance_funding_type.dart';

/// auto generated
class InvoicePaymentMethodOptionsCustomerBalance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  InvoicePaymentMethodOptionsCustomerBalanceBankTransfer? bankTransfer;

  ///  The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
  InvoicePaymentMethodOptionsCustomerBalanceFundingType? fundingType;

  /// Instantiates a new [InvoicePaymentMethodOptionsCustomerBalance] and sets the default values.
  InvoicePaymentMethodOptionsCustomerBalance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicePaymentMethodOptionsCustomerBalance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicePaymentMethodOptionsCustomerBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_transfer'] = (node) => bankTransfer = node
        .getObjectValue<InvoicePaymentMethodOptionsCustomerBalanceBankTransfer>(
            InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['funding_type'] = (node) => fundingType = node
        .getEnumValue<InvoicePaymentMethodOptionsCustomerBalanceFundingType>(
            (stringValue) =>
                InvoicePaymentMethodOptionsCustomerBalanceFundingType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicePaymentMethodOptionsCustomerBalanceBankTransfer>(
        'bank_transfer', bankTransfer);
    writer
        .writeEnumValue<InvoicePaymentMethodOptionsCustomerBalanceFundingType>(
            'funding_type', fundingType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
