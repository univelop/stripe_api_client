// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_balance_credits_application_invoice_voided_invoice.dart';

/// auto generated
class BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invoice to which the reinstated billing credits were originally applied.
  BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoidedInvoice?
      invoice;

  ///  The invoice line item to which the reinstated billing credits were originally applied.
  String? invoiceLineItem;

  /// Instantiates a new [BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided] and sets the default values.
  BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['invoice'] = (node) => invoice = node.getObjectValue<
            BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoidedInvoice>(
        BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoidedInvoice
            .createFromDiscriminatorValue);
    deserializerMap['invoice_line_item'] =
        (node) => invoiceLineItem = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoidedInvoice>(
        'invoice', invoice);
    writer.writeStringValue('invoice_line_item', invoiceLineItem);
    writer.writeAdditionalData(additionalData);
  }
}
