// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_resource_line_item_tax_breakdown.dart';
import './calculation_line_item_metadata.dart';
import './calculation_line_item_object.dart';
import './calculation_line_item_tax_behavior.dart';

/// auto generated
class CalculationLineItem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The line item amount in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
  int? amount;

  ///  The amount of tax calculated for this line item, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amountTax;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CalculationLineItemMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  CalculationLineItemObject? object;

  ///  The ID of an existing [Product](https://docs.stripe.com/api/products/object).
  String? product;

  ///  The number of units of the item being purchased. For reversals, this is the quantity reversed.
  int? quantity;

  ///  A custom identifier for this line item.
  String? reference;

  ///  Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
  CalculationLineItemTaxBehavior? taxBehavior;

  ///  Detailed account of taxes relevant to this line item.
  Iterable<TaxProductResourceLineItemTaxBreakdown>? taxBreakdown;

  ///  The [tax code](https://docs.stripe.com/tax/tax-categories) ID used for this resource.
  String? taxCode;

  /// Instantiates a new [CalculationLineItem] and sets the default values.
  CalculationLineItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationLineItem createFromDiscriminatorValue(ParseNode parseNode) {
    return CalculationLineItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CalculationLineItemMetadata>(
            CalculationLineItemMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CalculationLineItemObject>((stringValue) =>
            CalculationLineItemObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<CalculationLineItemTaxBehavior>((stringValue) =>
            CalculationLineItemTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_breakdown'] = (node) => taxBreakdown = node
        .getCollectionOfObjectValues<TaxProductResourceLineItemTaxBreakdown>(
            TaxProductResourceLineItemTaxBreakdown
                .createFromDiscriminatorValue);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_tax', amountTax);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CalculationLineItemMetadata>('metadata', metadata);
    writer.writeEnumValue<CalculationLineItemObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('product', product);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<CalculationLineItemTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer
        .writeCollectionOfObjectValues<TaxProductResourceLineItemTaxBreakdown>(
            'tax_breakdown', taxBreakdown);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeAdditionalData(additionalData);
  }
}
