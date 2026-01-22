// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './line_items_tax_amount_taxability_reason.dart';
import './tax_rate.dart';

/// auto generated
class LineItemsTaxAmount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount of tax applied for this rate.
  int? amount;

  ///  Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.Related guide: [Tax rates](/billing/taxes/tax-rates)
  TaxRate? rate;

  ///  The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
  LineItemsTaxAmountTaxabilityReason? taxabilityReason;

  ///  The amount on which tax is calculated, in cents (or local equivalent).
  int? taxableAmount;

  /// Instantiates a new [LineItemsTaxAmount] and sets the default values.
  LineItemsTaxAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LineItemsTaxAmount createFromDiscriminatorValue(ParseNode parseNode) {
    return LineItemsTaxAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['rate'] = (node) => rate =
        node.getObjectValue<TaxRate>(TaxRate.createFromDiscriminatorValue);
    deserializerMap['taxability_reason'] = (node) => taxabilityReason =
        node.getEnumValue<LineItemsTaxAmountTaxabilityReason>((stringValue) =>
            LineItemsTaxAmountTaxabilityReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['taxable_amount'] =
        (node) => taxableAmount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<TaxRate>('rate', rate);
    writer.writeEnumValue<LineItemsTaxAmountTaxabilityReason>(
        'taxability_reason', taxabilityReason, (e) => e?.value);
    writer.writeIntValue('taxable_amount', taxableAmount);
    writer.writeAdditionalData(additionalData);
  }
}
