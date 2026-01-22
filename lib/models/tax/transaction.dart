// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_resource_customer_details.dart';
import '../tax_product_resource_ship_from_details.dart';
import '../tax_product_resource_tax_transaction_resource_reversal.dart';
import '../tax_product_resource_tax_transaction_shipping_cost.dart';
import './transaction_line_items.dart';
import './transaction_metadata.dart';
import './transaction_object.dart';
import './transaction_type.dart';

/// auto generated
/// A Tax Transaction records the tax collected from or refunded to your customer.Related guide: [Calculate tax in your custom payment flow](https://docs.stripe.com/tax/custom#tax-transaction)
class Transaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of an existing [Customer](https://docs.stripe.com/api/customers/object) used for the resource.
  String? customer;

  ///  The customer_details property
  TaxProductResourceCustomerDetails? customerDetails;

  ///  Unique identifier for the transaction.
  String? id;

  ///  The tax collected or refunded, by line item.
  TransactionLineItems? lineItems;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TransactionMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransactionObject? object;

  ///  The Unix timestamp representing when the tax liability is assumed or reduced.
  int? postedAt;

  ///  A custom unique identifier, such as 'myOrder_123'.
  String? reference;

  ///  If `type=reversal`, contains information about what was reversed.
  TaxProductResourceTaxTransactionResourceReversal? reversal;

  ///  The details of the ship from location, such as the address.
  TaxProductResourceShipFromDetails? shipFromDetails;

  ///  The shipping cost details for the transaction.
  TaxProductResourceTaxTransactionShippingCost? shippingCost;

  ///  Timestamp of date at which the tax rules and rates in effect applies for the calculation.
  int? taxDate;

  ///  If `reversal`, this transaction reverses an earlier transaction.
  TransactionType? type_;

  /// Instantiates a new [Transaction] and sets the default values.
  Transaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Transaction createFromDiscriminatorValue(ParseNode parseNode) {
    return Transaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<TaxProductResourceCustomerDetails>(
            TaxProductResourceCustomerDetails.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<TransactionLineItems>(
            TransactionLineItems.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TransactionMetadata>(
            TransactionMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransactionObject>((stringValue) => TransactionObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['posted_at'] = (node) => postedAt = node.getIntValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['reversal'] = (node) => reversal =
        node.getObjectValue<TaxProductResourceTaxTransactionResourceReversal>(
            TaxProductResourceTaxTransactionResourceReversal
                .createFromDiscriminatorValue);
    deserializerMap['ship_from_details'] = (node) => shipFromDetails =
        node.getObjectValue<TaxProductResourceShipFromDetails>(
            TaxProductResourceShipFromDetails.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<TaxProductResourceTaxTransactionShippingCost>(
            TaxProductResourceTaxTransactionShippingCost
                .createFromDiscriminatorValue);
    deserializerMap['tax_date'] = (node) => taxDate = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TransactionType>((stringValue) => TransactionType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeObjectValue<TaxProductResourceCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<TransactionLineItems>('line_items', lineItems);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<TransactionMetadata>('metadata', metadata);
    writer.writeEnumValue<TransactionObject>('object', object, (e) => e?.value);
    writer.writeIntValue('posted_at', postedAt);
    writer.writeStringValue('reference', reference);
    writer.writeObjectValue<TaxProductResourceTaxTransactionResourceReversal>(
        'reversal', reversal);
    writer.writeObjectValue<TaxProductResourceShipFromDetails>(
        'ship_from_details', shipFromDetails);
    writer.writeObjectValue<TaxProductResourceTaxTransactionShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeIntValue('tax_date', taxDate);
    writer.writeEnumValue<TransactionType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
