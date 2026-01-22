// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_lines_parents_invoice_line_item_parent.dart';
import './billing_bill_resource_invoicing_pricing_pricing.dart';
import './billing_bill_resource_invoicing_taxes_tax.dart';
import './discounts_resource_discount_amount.dart';
import './invoice_line_item_period.dart';
import './invoices_resource_pretax_credit_amount.dart';
import './line_item_metadata.dart';
import './line_item_object.dart';
import './line_item_subscription.dart';

/// auto generated
/// Invoice Line Items represent the individual lines within an [invoice](https://docs.stripe.com/api/invoices) and only exist within the context of an invoice.Each line item is backed by either an [invoice item](https://docs.stripe.com/api/invoiceitems) or a [subscription item](https://docs.stripe.com/api/subscription_items).
class LineItem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount, in cents (or local equivalent).
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  If true, discounts will apply to this line item. Always false for prorations.
  bool? discountable;

  ///  The amount of discount calculated per discount for this line item.
  Iterable<DiscountsResourceDiscountAmount>? discountAmounts;

  ///  The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
  Iterable<String>? discounts;

  ///  Unique identifier for the object.
  String? id;

  ///  The ID of the invoice that contains this line item.
  String? invoice;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
  LineItemMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  LineItemObject? object;

  ///  The parent that generated this line item.
  BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent? parent;

  ///  The period property
  InvoiceLineItemPeriod? period;

  ///  Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
  Iterable<InvoicesResourcePretaxCreditAmount>? pretaxCreditAmounts;

  ///  The pricing information of the line item.
  BillingBillResourceInvoicingPricingPricing? pricing;

  ///  The quantity of the subscription, if the line item is a subscription or a proration.
  int? quantity;

  ///  The subscription property
  LineItemSubscription? subscription;

  ///  The subtotal of the line item, in cents (or local equivalent), before any discounts or taxes.
  int? subtotal;

  ///  The tax information of the line item.
  Iterable<BillingBillResourceInvoicingTaxesTax>? taxes;

  /// Instantiates a new [LineItem] and sets the default values.
  LineItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LineItem createFromDiscriminatorValue(ParseNode parseNode) {
    return LineItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discountable'] =
        (node) => discountable = node.getBoolValue();
    deserializerMap['discount_amounts'] = (node) => discountAmounts =
        node.getCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
            DiscountsResourceDiscountAmount.createFromDiscriminatorValue);
    deserializerMap['discounts'] =
        (node) => discounts = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<LineItemMetadata>(
            LineItemMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<LineItemObject>((stringValue) => LineItemObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['parent'] = (node) => parent = node.getObjectValue<
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent>(
        BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent
            .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<InvoiceLineItemPeriod>(
            InvoiceLineItemPeriod.createFromDiscriminatorValue);
    deserializerMap['pretax_credit_amounts'] = (node) => pretaxCreditAmounts =
        node.getCollectionOfObjectValues<InvoicesResourcePretaxCreditAmount>(
            InvoicesResourcePretaxCreditAmount.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing =
        node.getObjectValue<BillingBillResourceInvoicingPricingPricing>(
            BillingBillResourceInvoicingPricingPricing
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['subscription'] = (node) => subscription =
        node.getObjectValue<LineItemSubscription>(
            LineItemSubscription.createFromDiscriminatorValue);
    deserializerMap['subtotal'] = (node) => subtotal = node.getIntValue();
    deserializerMap['taxes'] = (node) => taxes =
        node.getCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
            BillingBillResourceInvoicingTaxesTax.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
        'discount_amounts', discountAmounts);
    writer.writeCollectionOfPrimitiveValues<String?>('discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('invoice', invoice);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<LineItemMetadata>('metadata', metadata);
    writer.writeEnumValue<LineItemObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<
            BillingBillResourceInvoicingLinesParentsInvoiceLineItemParent>(
        'parent', parent);
    writer.writeObjectValue<InvoiceLineItemPeriod>('period', period);
    writer.writeCollectionOfObjectValues<InvoicesResourcePretaxCreditAmount>(
        'pretax_credit_amounts', pretaxCreditAmounts);
    writer.writeObjectValue<BillingBillResourceInvoicingPricingPricing>(
        'pricing', pricing);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<LineItemSubscription>('subscription', subscription);
    writer.writeIntValue('subtotal', subtotal);
    writer.writeCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
        'taxes', taxes);
    writer.writeAdditionalData(additionalData);
  }
}
