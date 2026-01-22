// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_taxes_tax.dart';
import './credit_note_customer.dart';
import './credit_note_customer_balance_transaction.dart';
import './credit_note_invoice.dart';
import './credit_note_lines.dart';
import './credit_note_metadata.dart';
import './credit_note_object.dart';
import './credit_note_reason.dart';
import './credit_note_refund.dart';
import './credit_note_status.dart';
import './credit_note_type.dart';
import './credit_notes_pretax_credit_amount.dart';
import './discounts_resource_discount_amount.dart';
import './invoices_resource_shipping_cost.dart';

/// auto generated
/// Issue a credit note to adjust an invoice's amount after the invoice is finalized.Related guide: [Credit notes](https://docs.stripe.com/billing/invoices/credit-notes)
class CreditNote implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax.
  int? amount;

  ///  This is the sum of all the shipping amounts.
  int? amountShipping;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  ID of the customer.
  CreditNoteCustomer? customer;

  ///  ID of the account representing the customer.
  String? customerAccount;

  ///  Customer balance transaction related to this credit note.
  CreditNoteCustomerBalanceTransaction? customerBalanceTransaction;

  ///  The integer amount in cents (or local equivalent) representing the total amount of discount that was credited.
  int? discountAmount;

  ///  The aggregate amounts calculated per discount for all line items.
  Iterable<DiscountsResourceDiscountAmount>? discountAmounts;

  ///  The date when this credit note is in effect. Same as `created` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the credit note PDF.
  int? effectiveAt;

  ///  Unique identifier for the object.
  String? id;

  ///  ID of the invoice.
  CreditNoteInvoice? invoice;

  ///  Line items that make up the credit note
  CreditNoteLines? lines;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Customer-facing text that appears on the credit note PDF.
  String? memo;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CreditNoteMetadata? metadata;

  ///  A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
  String? number;

  ///  String representing the object's type. Objects of the same type share the same value.
  CreditNoteObject? object;

  ///  Amount that was credited outside of Stripe.
  int? outOfBandAmount;

  ///  The link to download the PDF of the credit note.
  String? pdf;

  ///  The amount of the credit note that was refunded to the customer, credited to the customer's balance, credited outside of Stripe, or any combination thereof.
  int? postPaymentAmount;

  ///  The amount of the credit note by which the invoice's `amount_remaining` and `amount_due` were reduced.
  int? prePaymentAmount;

  ///  The pretax credit amounts (ex: discount, credit grants, etc) for all line items.
  Iterable<CreditNotesPretaxCreditAmount>? pretaxCreditAmounts;

  ///  Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
  CreditNoteReason? reason;

  ///  Refunds related to this credit note.
  Iterable<CreditNoteRefund>? refunds;

  ///  The details of the cost of shipping, including the ShippingRate applied to the invoice.
  InvoicesResourceShippingCost? shippingCost;

  ///  Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://docs.stripe.com/billing/invoices/credit-notes#voiding).
  CreditNoteStatus? status;

  ///  The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
  int? subtotal;

  ///  The integer amount in cents (or local equivalent) representing the amount of the credit note, excluding all tax and invoice level discounts.
  int? subtotalExcludingTax;

  ///  The integer amount in cents (or local equivalent) representing the total amount of the credit note, including tax and all discount.
  int? total;

  ///  The integer amount in cents (or local equivalent) representing the total amount of the credit note, excluding tax, but including discounts.
  int? totalExcludingTax;

  ///  The aggregate tax information for all line items.
  Iterable<BillingBillResourceInvoicingTaxesTax>? totalTaxes;

  ///  Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
  CreditNoteType? type_;

  ///  The time that the credit note was voided.
  int? voidedAt;

  /// Instantiates a new [CreditNote] and sets the default values.
  CreditNote() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNote createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditNote();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_shipping'] =
        (node) => amountShipping = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<CreditNoteCustomer>(
            CreditNoteCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['customer_balance_transaction'] = (node) =>
        customerBalanceTransaction = node.getObjectValue<
                CreditNoteCustomerBalanceTransaction>(
            CreditNoteCustomerBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['discount_amount'] =
        (node) => discountAmount = node.getIntValue();
    deserializerMap['discount_amounts'] = (node) => discountAmounts =
        node.getCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
            DiscountsResourceDiscountAmount.createFromDiscriminatorValue);
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<CreditNoteInvoice>(
            CreditNoteInvoice.createFromDiscriminatorValue);
    deserializerMap['lines'] = (node) => lines =
        node.getObjectValue<CreditNoteLines>(
            CreditNoteLines.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['memo'] = (node) => memo = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreditNoteMetadata>(
            CreditNoteMetadata.createFromDiscriminatorValue);
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<CreditNoteObject>((stringValue) => CreditNoteObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['out_of_band_amount'] =
        (node) => outOfBandAmount = node.getIntValue();
    deserializerMap['pdf'] = (node) => pdf = node.getStringValue();
    deserializerMap['post_payment_amount'] =
        (node) => postPaymentAmount = node.getIntValue();
    deserializerMap['pre_payment_amount'] =
        (node) => prePaymentAmount = node.getIntValue();
    deserializerMap['pretax_credit_amounts'] = (node) => pretaxCreditAmounts =
        node.getCollectionOfObjectValues<CreditNotesPretaxCreditAmount>(
            CreditNotesPretaxCreditAmount.createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason = node
        .getEnumValue<CreditNoteReason>((stringValue) => CreditNoteReason.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['refunds'] = (node) => refunds =
        node.getCollectionOfObjectValues<CreditNoteRefund>(
            CreditNoteRefund.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<InvoicesResourceShippingCost>(
            InvoicesResourceShippingCost.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node
        .getEnumValue<CreditNoteStatus>((stringValue) => CreditNoteStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['subtotal'] = (node) => subtotal = node.getIntValue();
    deserializerMap['subtotal_excluding_tax'] =
        (node) => subtotalExcludingTax = node.getIntValue();
    deserializerMap['total'] = (node) => total = node.getIntValue();
    deserializerMap['total_excluding_tax'] =
        (node) => totalExcludingTax = node.getIntValue();
    deserializerMap['total_taxes'] = (node) => totalTaxes =
        node.getCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
            BillingBillResourceInvoicingTaxesTax.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditNoteType>((stringValue) => CreditNoteType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['voided_at'] = (node) => voidedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_shipping', amountShipping);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<CreditNoteCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<CreditNoteCustomerBalanceTransaction>(
        'customer_balance_transaction', customerBalanceTransaction);
    writer.writeIntValue('discount_amount', discountAmount);
    writer.writeCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
        'discount_amounts', discountAmounts);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<CreditNoteInvoice>('invoice', invoice);
    writer.writeObjectValue<CreditNoteLines>('lines', lines);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('memo', memo);
    writer.writeObjectValue<CreditNoteMetadata>('metadata', metadata);
    writer.writeStringValue('number', number);
    writer.writeEnumValue<CreditNoteObject>('object', object, (e) => e?.value);
    writer.writeIntValue('out_of_band_amount', outOfBandAmount);
    writer.writeStringValue('pdf', pdf);
    writer.writeIntValue('post_payment_amount', postPaymentAmount);
    writer.writeIntValue('pre_payment_amount', prePaymentAmount);
    writer.writeCollectionOfObjectValues<CreditNotesPretaxCreditAmount>(
        'pretax_credit_amounts', pretaxCreditAmounts);
    writer.writeEnumValue<CreditNoteReason>('reason', reason, (e) => e?.value);
    writer.writeCollectionOfObjectValues<CreditNoteRefund>('refunds', refunds);
    writer.writeObjectValue<InvoicesResourceShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeEnumValue<CreditNoteStatus>('status', status, (e) => e?.value);
    writer.writeIntValue('subtotal', subtotal);
    writer.writeIntValue('subtotal_excluding_tax', subtotalExcludingTax);
    writer.writeIntValue('total', total);
    writer.writeIntValue('total_excluding_tax', totalExcludingTax);
    writer.writeCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
        'total_taxes', totalTaxes);
    writer.writeEnumValue<CreditNoteType>('type', type_, (e) => e?.value);
    writer.writeIntValue('voided_at', voidedAt);
    writer.writeAdditionalData(additionalData);
  }
}
