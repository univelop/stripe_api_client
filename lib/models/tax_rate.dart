// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_rate_flat_amount.dart';
import './tax_rate_jurisdiction_level.dart';
import './tax_rate_metadata.dart';
import './tax_rate_object.dart';
import './tax_rate_rate_type.dart';
import './tax_rate_tax_type.dart';

/// auto generated
/// Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.Related guide: [Tax rates](/billing/taxes/tax-rates)
class TaxRate implements AdditionalDataHolder, Parsable {
  ///  Defaults to `true`. When set to `false`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  String? description;

  ///  The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
  String? displayName;

  ///  Actual/effective tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true,this percentage reflects the rate actually used to calculate tax based on the product's taxabilityand whether the user is registered to collect taxes in the corresponding jurisdiction.
  double? effectivePercentage;

  ///  The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
  TaxRateFlatAmount? flatAmount;

  ///  Unique identifier for the object.
  String? id;

  ///  This specifies if the tax rate is inclusive or exclusive.
  bool? inclusive;

  ///  The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
  String? jurisdiction;

  ///  The level of the jurisdiction that imposes this tax rate. Will be `null` for manually defined tax rates.
  TaxRateJurisdictionLevel? jurisdictionLevel;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TaxRateMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  TaxRateObject? object;

  ///  Tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage includes the statutory tax rate of non-taxable jurisdictions.
  double? percentage;

  ///  Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
  TaxRateRateType? rateType;

  ///  [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
  String? state;

  ///  The high-level tax type, such as `vat` or `sales_tax`.
  TaxRateTaxType? taxType;

  /// Instantiates a new [TaxRate] and sets the default values.
  TaxRate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxRate createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxRate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['effective_percentage'] =
        (node) => effectivePercentage = node.getDoubleValue();
    deserializerMap['flat_amount'] = (node) => flatAmount =
        node.getObjectValue<TaxRateFlatAmount>(
            TaxRateFlatAmount.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['inclusive'] = (node) => inclusive = node.getBoolValue();
    deserializerMap['jurisdiction'] =
        (node) => jurisdiction = node.getStringValue();
    deserializerMap['jurisdiction_level'] = (node) => jurisdictionLevel =
        node.getEnumValue<TaxRateJurisdictionLevel>((stringValue) =>
            TaxRateJurisdictionLevel.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TaxRateMetadata>(
            TaxRateMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TaxRateObject>((stringValue) => TaxRateObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['percentage'] =
        (node) => percentage = node.getDoubleValue();
    deserializerMap['rate_type'] = (node) => rateType = node
        .getEnumValue<TaxRateRateType>((stringValue) => TaxRateRateType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['tax_type'] = (node) => taxType =
        node.getEnumValue<TaxRateTaxType>((stringValue) => TaxRateTaxType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('country', country);
    writer.writeIntValue('created', created);
    writer.writeStringValue('description', description);
    writer.writeStringValue('display_name', displayName);
    writer.writeDoubleValue('effective_percentage', effectivePercentage);
    writer.writeObjectValue<TaxRateFlatAmount>('flat_amount', flatAmount);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('inclusive', value: inclusive);
    writer.writeStringValue('jurisdiction', jurisdiction);
    writer.writeEnumValue<TaxRateJurisdictionLevel>(
        'jurisdiction_level', jurisdictionLevel, (e) => e?.value);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<TaxRateMetadata>('metadata', metadata);
    writer.writeEnumValue<TaxRateObject>('object', object, (e) => e?.value);
    writer.writeDoubleValue('percentage', percentage);
    writer.writeEnumValue<TaxRateRateType>(
        'rate_type', rateType, (e) => e?.value);
    writer.writeStringValue('state', state);
    writer.writeEnumValue<TaxRateTaxType>('tax_type', taxType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
