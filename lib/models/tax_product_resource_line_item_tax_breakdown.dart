// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_jurisdiction.dart';
import './tax_product_resource_line_item_tax_breakdown_sourcing.dart';
import './tax_product_resource_line_item_tax_breakdown_taxability_reason.dart';
import './tax_product_resource_line_item_tax_rate_details.dart';

/// auto generated
class TaxProductResourceLineItemTaxBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount of tax, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  The jurisdiction property
  TaxProductResourceJurisdiction? jurisdiction;

  ///  Indicates whether the jurisdiction was determined by the origin (merchant's address) or destination (customer's address).
  TaxProductResourceLineItemTaxBreakdownSourcing? sourcing;

  ///  The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
  TaxProductResourceLineItemTaxBreakdownTaxabilityReason? taxabilityReason;

  ///  The amount on which tax is calculated, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? taxableAmount;

  ///  Details regarding the rate for this tax. This field will be `null` when the tax is not imposed, for example if the product is exempt from tax.
  TaxProductResourceLineItemTaxRateDetails? taxRateDetails;

  /// Instantiates a new [TaxProductResourceLineItemTaxBreakdown] and sets the default values.
  TaxProductResourceLineItemTaxBreakdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceLineItemTaxBreakdown createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceLineItemTaxBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['jurisdiction'] = (node) => jurisdiction =
        node.getObjectValue<TaxProductResourceJurisdiction>(
            TaxProductResourceJurisdiction.createFromDiscriminatorValue);
    deserializerMap['sourcing'] = (node) => sourcing =
        node.getEnumValue<TaxProductResourceLineItemTaxBreakdownSourcing>(
            (stringValue) => TaxProductResourceLineItemTaxBreakdownSourcing
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['taxability_reason'] = (node) => taxabilityReason = node
        .getEnumValue<TaxProductResourceLineItemTaxBreakdownTaxabilityReason>(
            (stringValue) =>
                TaxProductResourceLineItemTaxBreakdownTaxabilityReason.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['taxable_amount'] =
        (node) => taxableAmount = node.getIntValue();
    deserializerMap['tax_rate_details'] = (node) => taxRateDetails =
        node.getObjectValue<TaxProductResourceLineItemTaxRateDetails>(
            TaxProductResourceLineItemTaxRateDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<TaxProductResourceJurisdiction>(
        'jurisdiction', jurisdiction);
    writer.writeEnumValue<TaxProductResourceLineItemTaxBreakdownSourcing>(
        'sourcing', sourcing, (e) => e?.value);
    writer
        .writeEnumValue<TaxProductResourceLineItemTaxBreakdownTaxabilityReason>(
            'taxability_reason', taxabilityReason, (e) => e?.value);
    writer.writeIntValue('taxable_amount', taxableAmount);
    writer.writeObjectValue<TaxProductResourceLineItemTaxRateDetails>(
        'tax_rate_details', taxRateDetails);
    writer.writeAdditionalData(additionalData);
  }
}
