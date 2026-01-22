// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../tax_product_resource_customer_details.dart';
import '../tax_product_resource_ship_from_details.dart';
import '../tax_product_resource_tax_breakdown.dart';
import '../tax_product_resource_tax_calculation_shipping_cost.dart';
import './calculation_line_items.dart';
import './calculation_object.dart';

/// auto generated
/// A Tax Calculation allows you to calculate the tax to collect from your customer.Related guide: [Calculate tax in your custom payment flow](https://docs.stripe.com/tax/custom)
class Calculation implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total amount after taxes in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amountTotal;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of an existing [Customer](https://docs.stripe.com/api/customers/object) used for the resource.
  String? customer;

  ///  The customer_details property
  TaxProductResourceCustomerDetails? customerDetails;

  ///  Timestamp of date at which the tax calculation will expire.
  int? expiresAt;

  ///  Unique identifier for the calculation.
  String? id;

  ///  The list of items the customer is purchasing.
  CalculationLineItems? lineItems;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  CalculationObject? object;

  ///  The details of the ship from location, such as the address.
  TaxProductResourceShipFromDetails? shipFromDetails;

  ///  The shipping cost details for the calculation.
  TaxProductResourceTaxCalculationShippingCost? shippingCost;

  ///  The amount of tax to be collected on top of the line item prices.
  int? taxAmountExclusive;

  ///  The amount of tax already included in the line item prices.
  int? taxAmountInclusive;

  ///  Breakdown of individual tax amounts that add up to the total.
  Iterable<TaxProductResourceTaxBreakdown>? taxBreakdown;

  ///  Timestamp of date at which the tax rules and rates in effect applies for the calculation.
  int? taxDate;

  /// Instantiates a new [Calculation] and sets the default values.
  Calculation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Calculation createFromDiscriminatorValue(ParseNode parseNode) {
    return Calculation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<TaxProductResourceCustomerDetails>(
            TaxProductResourceCustomerDetails.createFromDiscriminatorValue);
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<CalculationLineItems>(
            CalculationLineItems.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CalculationObject>((stringValue) => CalculationObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['ship_from_details'] = (node) => shipFromDetails =
        node.getObjectValue<TaxProductResourceShipFromDetails>(
            TaxProductResourceShipFromDetails.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<TaxProductResourceTaxCalculationShippingCost>(
            TaxProductResourceTaxCalculationShippingCost
                .createFromDiscriminatorValue);
    deserializerMap['tax_amount_exclusive'] =
        (node) => taxAmountExclusive = node.getIntValue();
    deserializerMap['tax_amount_inclusive'] =
        (node) => taxAmountInclusive = node.getIntValue();
    deserializerMap['tax_breakdown'] = (node) => taxBreakdown =
        node.getCollectionOfObjectValues<TaxProductResourceTaxBreakdown>(
            TaxProductResourceTaxBreakdown.createFromDiscriminatorValue);
    deserializerMap['tax_date'] = (node) => taxDate = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeObjectValue<TaxProductResourceCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<CalculationLineItems>('line_items', lineItems);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<CalculationObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<TaxProductResourceShipFromDetails>(
        'ship_from_details', shipFromDetails);
    writer.writeObjectValue<TaxProductResourceTaxCalculationShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeIntValue('tax_amount_exclusive', taxAmountExclusive);
    writer.writeIntValue('tax_amount_inclusive', taxAmountInclusive);
    writer.writeCollectionOfObjectValues<TaxProductResourceTaxBreakdown>(
        'tax_breakdown', taxBreakdown);
    writer.writeIntValue('tax_date', taxDate);
    writer.writeAdditionalData(additionalData);
  }
}
