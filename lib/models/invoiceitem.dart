// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoice_item_parents_invoice_item_parent.dart';
import './billing_bill_resource_invoicing_pricing_pricing.dart';
import './invoice_line_item_period.dart';
import './invoiceitem_customer.dart';
import './invoiceitem_invoice.dart';
import './invoiceitem_metadata.dart';
import './invoiceitem_object.dart';
import './invoiceitem_test_clock.dart';
import './proration_details.dart';
import './tax_rate.dart';

/// auto generated
/// Invoice Items represent the component lines of an [invoice](https://docs.stripe.com/api/invoices). When you create an invoice item with an `invoice` field, it is attached to the specified invoice and included as [an invoice line item](https://docs.stripe.com/api/invoices/line_item) within [invoice.lines](https://docs.stripe.com/api/invoices/object#invoice_object-lines).Invoice Items can be created before you are ready to actually send the invoice. This can be particularly useful when combinedwith a [subscription](https://docs.stripe.com/api/subscriptions). Sometimes you want to add a charge or credit to a customer, but actually chargeor credit the customer's card only at the end of a regular billing cycle. This is useful for combining several charges(to minimize per-transaction fees), or for having Stripe tabulate your usage-based billing totals.Related guides: [Integrate with the Invoicing API](https://docs.stripe.com/invoicing/integration), [Subscription Invoices](https://docs.stripe.com/billing/invoices/subscription#adding-upcoming-invoice-items).
class Invoiceitem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of the customer to bill for this invoice item.
  InvoiceitemCustomer? customer;

  ///  The ID of the account to bill for this invoice item.
  String? customerAccount;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? date;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  If true, discounts will apply to this invoice item. Always false for prorations.
  bool? discountable;

  ///  The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
  Iterable<String>? discounts;

  ///  Unique identifier for the object.
  String? id;

  ///  The ID of the invoice this invoice item belongs to.
  InvoiceitemInvoice? invoice;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  InvoiceitemMetadata? metadata;

  ///  The amount after discounts, but before credits and taxes. This field is `null` for `discountable=true` items.
  int? netAmount;

  ///  String representing the object's type. Objects of the same type share the same value.
  InvoiceitemObject? object;

  ///  The parent that generated this invoice item.
  BillingBillResourceInvoiceItemParentsInvoiceItemParent? parent;

  ///  The period property
  InvoiceLineItemPeriod? period;

  ///  The pricing information of the invoice item.
  BillingBillResourceInvoicingPricingPricing? pricing;

  ///  Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
  bool? proration;

  ///  The proration_details property
  ProrationDetails? prorationDetails;

  ///  Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
  int? quantity;

  ///  The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
  Iterable<TaxRate>? taxRates;

  ///  ID of the test clock this invoice item belongs to.
  InvoiceitemTestClock? testClock;

  /// Instantiates a new [Invoiceitem] and sets the default values.
  Invoiceitem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Invoiceitem createFromDiscriminatorValue(ParseNode parseNode) {
    return Invoiceitem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<InvoiceitemCustomer>(
            InvoiceitemCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discountable'] =
        (node) => discountable = node.getBoolValue();
    deserializerMap['discounts'] =
        (node) => discounts = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<InvoiceitemInvoice>(
            InvoiceitemInvoice.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<InvoiceitemMetadata>(
            InvoiceitemMetadata.createFromDiscriminatorValue);
    deserializerMap['net_amount'] = (node) => netAmount = node.getIntValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<InvoiceitemObject>((stringValue) => InvoiceitemObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['parent'] = (node) => parent = node
        .getObjectValue<BillingBillResourceInvoiceItemParentsInvoiceItemParent>(
            BillingBillResourceInvoiceItemParentsInvoiceItemParent
                .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<InvoiceLineItemPeriod>(
            InvoiceLineItemPeriod.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing =
        node.getObjectValue<BillingBillResourceInvoicingPricingPricing>(
            BillingBillResourceInvoicingPricingPricing
                .createFromDiscriminatorValue);
    deserializerMap['proration'] = (node) => proration = node.getBoolValue();
    deserializerMap['proration_details'] = (node) => prorationDetails =
        node.getObjectValue<ProrationDetails>(
            ProrationDetails.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getCollectionOfObjectValues<TaxRate>(
            TaxRate.createFromDiscriminatorValue);
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<InvoiceitemTestClock>(
            InvoiceitemTestClock.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<InvoiceitemCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('date', date);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeCollectionOfPrimitiveValues<String?>('discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<InvoiceitemInvoice>('invoice', invoice);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<InvoiceitemMetadata>('metadata', metadata);
    writer.writeIntValue('net_amount', netAmount);
    writer.writeEnumValue<InvoiceitemObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<
            BillingBillResourceInvoiceItemParentsInvoiceItemParent>(
        'parent', parent);
    writer.writeObjectValue<InvoiceLineItemPeriod>('period', period);
    writer.writeObjectValue<BillingBillResourceInvoicingPricingPricing>(
        'pricing', pricing);
    writer.writeBoolValue('proration', value: proration);
    writer.writeObjectValue<ProrationDetails>(
        'proration_details', prorationDetails);
    writer.writeIntValue('quantity', quantity);
    writer.writeCollectionOfObjectValues<TaxRate>('tax_rates', taxRates);
    writer.writeObjectValue<InvoiceitemTestClock>('test_clock', testClock);
    writer.writeAdditionalData(additionalData);
  }
}
