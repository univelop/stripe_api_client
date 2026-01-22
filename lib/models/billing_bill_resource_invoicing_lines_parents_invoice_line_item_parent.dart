// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_lines_parents_invoice_line_item_invoice_item_parent.dart';
import './billing_bill_resource_invoicing_lines_parents_invoice_line_item_parent_type.dart';
import './billing_bill_resource_invoicing_lines_parents_invoice_line_item_subscription_item_parent.dart';

/// auto generated
class BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about the invoice item that generated this line item
  BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent?
      invoiceItemDetails;

  ///  Details about the subscription item that generated this line item
  BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent?
      subscriptionItemDetails;

  ///  The type of parent that generated this line item
  BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType? type_;

  /// Instantiates a new [BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent] and sets the default values.
  BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'invoice_item_details'] = (node) => invoiceItemDetails = node.getObjectValue<
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent>(
        BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent
            .createFromDiscriminatorValue);
    deserializerMap['subscription_item_details'] = (node) =>
        subscriptionItemDetails = node.getObjectValue<
                BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent>(
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType>(
        (stringValue) =>
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType
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
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemInvoiceItemParent>(
        'invoice_item_details', invoiceItemDetails);
    writer.writeObjectValue<
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemSubscriptionItemParent>(
        'subscription_item_details', subscriptionItemDetails);
    writer.writeEnumValue<
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemParentType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
