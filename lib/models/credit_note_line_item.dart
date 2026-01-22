// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_taxes_tax.dart';
import './credit_note_line_item_object.dart';
import './credit_note_line_item_type.dart';
import './credit_notes_pretax_credit_amount.dart';
import './discounts_resource_discount_amount.dart';
import './tax_rate.dart';

/// auto generated
/// The credit note line item object
class CreditNoteLineItem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The integer amount in cents (or local equivalent) representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
  int? amount;

  ///  Description of the item being credited.
  String? description;

  ///  The integer amount in cents (or local equivalent) representing the discount being credited for this line item.
  int? discountAmount;

  ///  The amount of discount calculated per discount for this line item
  Iterable<DiscountsResourceDiscountAmount>? discountAmounts;

  ///  Unique identifier for the object.
  String? id;

  ///  ID of the invoice line item being credited
  String? invoiceLineItem;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  CreditNoteLineItemObject? object;

  ///  The pretax credit amounts (ex: discount, credit grants, etc) for this line item.
  Iterable<CreditNotesPretaxCreditAmount>? pretaxCreditAmounts;

  ///  The number of units of product being credited.
  int? quantity;

  ///  The tax information of the line item.
  Iterable<BillingBillResourceInvoicingTaxesTax>? taxes;

  ///  The tax rates which apply to the line item.
  Iterable<TaxRate>? taxRates;

  ///  The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
  CreditNoteLineItemType? type_;

  ///  The cost of each unit of product being credited.
  int? unitAmount;

  ///  Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
  String? unitAmountDecimal;

  /// Instantiates a new [CreditNoteLineItem] and sets the default values.
  CreditNoteLineItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNoteLineItem createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditNoteLineItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discount_amount'] =
        (node) => discountAmount = node.getIntValue();
    deserializerMap['discount_amounts'] = (node) => discountAmounts =
        node.getCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
            DiscountsResourceDiscountAmount.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice_line_item'] =
        (node) => invoiceLineItem = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CreditNoteLineItemObject>((stringValue) =>
            CreditNoteLineItemObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pretax_credit_amounts'] = (node) => pretaxCreditAmounts =
        node.getCollectionOfObjectValues<CreditNotesPretaxCreditAmount>(
            CreditNotesPretaxCreditAmount.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['taxes'] = (node) => taxes =
        node.getCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
            BillingBillResourceInvoicingTaxesTax.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getCollectionOfObjectValues<TaxRate>(
            TaxRate.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditNoteLineItemType>((stringValue) =>
            CreditNoteLineItemType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeIntValue('discount_amount', discountAmount);
    writer.writeCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
        'discount_amounts', discountAmounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('invoice_line_item', invoiceLineItem);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<CreditNoteLineItemObject>(
        'object', object, (e) => e?.value);
    writer.writeCollectionOfObjectValues<CreditNotesPretaxCreditAmount>(
        'pretax_credit_amounts', pretaxCreditAmounts);
    writer.writeIntValue('quantity', quantity);
    writer.writeCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
        'taxes', taxes);
    writer.writeCollectionOfObjectValues<TaxRate>('tax_rates', taxRates);
    writer.writeEnumValue<CreditNoteLineItemType>(
        'type', type_, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
