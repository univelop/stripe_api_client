// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_tax_breakdown_taxability_reason.dart';
import './tax_product_resource_tax_rate_details.dart';

/// auto generated
class TaxProductResourceTaxBreakdown implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount of tax, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Specifies whether the tax amount is included in the line item amount.
  bool? inclusive;

  ///  The reasoning behind this tax, for example, if the product is tax exempt. We might extend the possible values for this field to support new tax rules.
  TaxProductResourceTaxBreakdownTaxabilityReason? taxabilityReason;

  ///  The amount on which tax is calculated, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? taxableAmount;

  ///  The tax_rate_details property
  TaxProductResourceTaxRateDetails? taxRateDetails;

  /// Instantiates a new [TaxProductResourceTaxBreakdown] and sets the default values.
  TaxProductResourceTaxBreakdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxBreakdown createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceTaxBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['inclusive'] = (node) => inclusive = node.getBoolValue();
    deserializerMap['taxability_reason'] = (node) => taxabilityReason =
        node.getEnumValue<TaxProductResourceTaxBreakdownTaxabilityReason>(
            (stringValue) => TaxProductResourceTaxBreakdownTaxabilityReason
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['taxable_amount'] =
        (node) => taxableAmount = node.getIntValue();
    deserializerMap['tax_rate_details'] = (node) => taxRateDetails =
        node.getObjectValue<TaxProductResourceTaxRateDetails>(
            TaxProductResourceTaxRateDetails.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeBoolValue('inclusive', value: inclusive);
    writer.writeEnumValue<TaxProductResourceTaxBreakdownTaxabilityReason>(
        'taxability_reason', taxabilityReason, (e) => e?.value);
    writer.writeIntValue('taxable_amount', taxableAmount);
    writer.writeObjectValue<TaxProductResourceTaxRateDetails>(
        'tax_rate_details', taxRateDetails);
    writer.writeAdditionalData(additionalData);
  }
}
