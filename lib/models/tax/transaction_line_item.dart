// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_resource_tax_transaction_line_item_resource_reversal.dart';
import './transaction_line_item_metadata.dart';
import './transaction_line_item_object.dart';
import './transaction_line_item_tax_behavior.dart';
import './transaction_line_item_type.dart';

/// auto generated
class TransactionLineItem implements AdditionalDataHolder, Parsable {
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
  TransactionLineItemMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransactionLineItemObject? object;

  ///  The ID of an existing [Product](https://docs.stripe.com/api/products/object).
  String? product;

  ///  The number of units of the item being purchased. For reversals, this is the quantity reversed.
  int? quantity;

  ///  A custom identifier for this line item in the transaction.
  String? reference;

  ///  If `type=reversal`, contains information about what was reversed.
  TaxProductResourceTaxTransactionLineItemResourceReversal? reversal;

  ///  Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
  TransactionLineItemTaxBehavior? taxBehavior;

  ///  The [tax code](https://docs.stripe.com/tax/tax-categories) ID used for this resource.
  String? taxCode;

  ///  If `reversal`, this line item reverses an earlier transaction.
  TransactionLineItemType? type_;

  /// Instantiates a new [TransactionLineItem] and sets the default values.
  TransactionLineItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransactionLineItem createFromDiscriminatorValue(ParseNode parseNode) {
    return TransactionLineItem();
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
        node.getObjectValue<TransactionLineItemMetadata>(
            TransactionLineItemMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransactionLineItemObject>((stringValue) =>
            TransactionLineItemObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['reversal'] = (node) => reversal = node.getObjectValue<
            TaxProductResourceTaxTransactionLineItemResourceReversal>(
        TaxProductResourceTaxTransactionLineItemResourceReversal
            .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<TransactionLineItemTaxBehavior>((stringValue) =>
            TransactionLineItemTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<TransactionLineItemType>((stringValue) =>
            TransactionLineItemType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
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
    writer.writeObjectValue<TransactionLineItemMetadata>('metadata', metadata);
    writer.writeEnumValue<TransactionLineItemObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('product', product);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('reference', reference);
    writer.writeObjectValue<
            TaxProductResourceTaxTransactionLineItemResourceReversal>(
        'reversal', reversal);
    writer.writeEnumValue<TransactionLineItemTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeEnumValue<TransactionLineItemType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
