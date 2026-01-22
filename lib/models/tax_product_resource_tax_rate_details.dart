// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_tax_rate_details_rate_type.dart';
import './tax_product_resource_tax_rate_details_tax_type.dart';
import './tax_rate_flat_amount.dart';

/// auto generated
class TaxProductResourceTaxRateDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
  TaxRateFlatAmount? flatAmount;

  ///  The tax rate percentage as a string. For example, 8.5% is represented as `"8.5"`.
  String? percentageDecimal;

  ///  Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
  TaxProductResourceTaxRateDetailsRateType? rateType;

  ///  State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
  String? state;

  ///  The tax type, such as `vat` or `sales_tax`.
  TaxProductResourceTaxRateDetailsTaxType? taxType;

  /// Instantiates a new [TaxProductResourceTaxRateDetails] and sets the default values.
  TaxProductResourceTaxRateDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxRateDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceTaxRateDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['flat_amount'] = (node) => flatAmount =
        node.getObjectValue<TaxRateFlatAmount>(
            TaxRateFlatAmount.createFromDiscriminatorValue);
    deserializerMap['percentage_decimal'] =
        (node) => percentageDecimal = node.getStringValue();
    deserializerMap['rate_type'] = (node) => rateType =
        node.getEnumValue<TaxProductResourceTaxRateDetailsRateType>(
            (stringValue) => TaxProductResourceTaxRateDetailsRateType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['tax_type'] = (node) => taxType =
        node.getEnumValue<TaxProductResourceTaxRateDetailsTaxType>(
            (stringValue) => TaxProductResourceTaxRateDetailsTaxType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeObjectValue<TaxRateFlatAmount>('flat_amount', flatAmount);
    writer.writeStringValue('percentage_decimal', percentageDecimal);
    writer.writeEnumValue<TaxProductResourceTaxRateDetailsRateType>(
        'rate_type', rateType, (e) => e?.value);
    writer.writeStringValue('state', state);
    writer.writeEnumValue<TaxProductResourceTaxRateDetailsTaxType>(
        'tax_type', taxType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
