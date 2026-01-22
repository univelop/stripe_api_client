// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item_metadata.dart';
import './item_object.dart';
import './line_items_discount_amount.dart';
import './line_items_tax_amount.dart';
import './price.dart';

/// auto generated
/// A line item.
class Item implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total discount amount applied. If no discounts were applied, defaults to 0.
  int? amountDiscount;

  ///  Total before any discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total tax amount applied. If no tax was applied, defaults to 0.
  int? amountTax;

  ///  Total after discounts and taxes.
  int? amountTotal;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users. Defaults to product name.
  String? description;

  ///  The discounts applied to the line item.
  Iterable<LineItemsDiscountAmount>? discounts;

  ///  Unique identifier for the object.
  String? id;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ItemMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  ItemObject? object;

  ///  The price used to generate the line item.
  Price? price;

  ///  The quantity of products being purchased.
  int? quantity;

  ///  The taxes applied to the line item.
  Iterable<LineItemsTaxAmount>? taxes;

  /// Instantiates a new [Item] and sets the default values.
  Item() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Item createFromDiscriminatorValue(ParseNode parseNode) {
    return Item();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_discount'] =
        (node) => amountDiscount = node.getIntValue();
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<LineItemsDiscountAmount>(
            LineItemsDiscountAmount.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ItemMetadata>(
            ItemMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ItemObject>((stringValue) => ItemObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['price'] = (node) =>
        price = node.getObjectValue<Price>(Price.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['taxes'] = (node) => taxes =
        node.getCollectionOfObjectValues<LineItemsTaxAmount>(
            LineItemsTaxAmount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_discount', amountDiscount);
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_tax', amountTax);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfObjectValues<LineItemsDiscountAmount>(
        'discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<ItemMetadata>('metadata', metadata);
    writer.writeEnumValue<ItemObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<Price>('price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeCollectionOfObjectValues<LineItemsTaxAmount>('taxes', taxes);
    writer.writeAdditionalData(additionalData);
  }
}
