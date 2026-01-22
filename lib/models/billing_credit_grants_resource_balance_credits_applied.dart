// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_balance_credits_applied_invoice.dart';

/// auto generated
class BillingCreditGrantsResourceBalanceCreditsApplied
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invoice to which the billing credits were applied.
  BillingCreditGrantsResourceBalanceCreditsAppliedInvoice? invoice;

  ///  The invoice line item to which the billing credits were applied.
  String? invoiceLineItem;

  /// Instantiates a new [BillingCreditGrantsResourceBalanceCreditsApplied] and sets the default values.
  BillingCreditGrantsResourceBalanceCreditsApplied() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingCreditGrantsResourceBalanceCreditsApplied
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingCreditGrantsResourceBalanceCreditsApplied();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['invoice'] = (node) => invoice = node.getObjectValue<
            BillingCreditGrantsResourceBalanceCreditsAppliedInvoice>(
        BillingCreditGrantsResourceBalanceCreditsAppliedInvoice
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
            BillingCreditGrantsResourceBalanceCreditsAppliedInvoice>(
        'invoice', invoice);
    writer.writeStringValue('invoice_line_item', invoiceLineItem);
    writer.writeAdditionalData(additionalData);
  }
}
