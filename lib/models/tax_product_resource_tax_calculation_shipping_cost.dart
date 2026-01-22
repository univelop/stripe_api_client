// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_line_item_tax_breakdown.dart';
import './tax_product_resource_tax_calculation_shipping_cost_tax_behavior.dart';

/// auto generated
class TaxProductResourceTaxCalculationShippingCost
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The shipping amount in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
  int? amount;

  ///  The amount of tax calculated for shipping, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amountTax;

  ///  The ID of an existing [ShippingRate](https://docs.stripe.com/api/shipping_rates/object).
  String? shippingRate;

  ///  Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
  TaxProductResourceTaxCalculationShippingCostTaxBehavior? taxBehavior;

  ///  Detailed account of taxes relevant to shipping cost.
  Iterable<TaxProductResourceLineItemTaxBreakdown>? taxBreakdown;

  ///  The [tax code](https://docs.stripe.com/tax/tax-categories) ID used for shipping.
  String? taxCode;

  /// Instantiates a new [TaxProductResourceTaxCalculationShippingCost] and sets the default values.
  TaxProductResourceTaxCalculationShippingCost() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxCalculationShippingCost
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductResourceTaxCalculationShippingCost();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    deserializerMap['shipping_rate'] =
        (node) => shippingRate = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node
        .getEnumValue<TaxProductResourceTaxCalculationShippingCostTaxBehavior>(
            (stringValue) =>
                TaxProductResourceTaxCalculationShippingCostTaxBehavior.values
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
    writer.writeStringValue('shipping_rate', shippingRate);
    writer.writeEnumValue<
            TaxProductResourceTaxCalculationShippingCostTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer
        .writeCollectionOfObjectValues<TaxProductResourceLineItemTaxBreakdown>(
            'tax_breakdown', taxBreakdown);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeAdditionalData(additionalData);
  }
}
