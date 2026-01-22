// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_tax_settings_defaults_provider.dart';
import './tax_product_resource_tax_settings_defaults_tax_behavior.dart';

/// auto generated
class TaxProductResourceTaxSettingsDefaults
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tax calculation provider this account uses. Defaults to `stripe` when not using a [third-party provider](/tax/third-party-apps).
  TaxProductResourceTaxSettingsDefaultsProvider? provider;

  ///  Default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) used to specify whether the price is considered inclusive of taxes or exclusive of taxes. If the item's price has a tax behavior set, it will take precedence over the default tax behavior.
  TaxProductResourceTaxSettingsDefaultsTaxBehavior? taxBehavior;

  ///  Default [tax code](https://stripe.com/docs/tax/tax-categories) used to classify your products and prices.
  String? taxCode;

  /// Instantiates a new [TaxProductResourceTaxSettingsDefaults] and sets the default values.
  TaxProductResourceTaxSettingsDefaults() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceTaxSettingsDefaults createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceTaxSettingsDefaults();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['provider'] = (node) => provider =
        node.getEnumValue<TaxProductResourceTaxSettingsDefaultsProvider>(
            (stringValue) => TaxProductResourceTaxSettingsDefaultsProvider
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<TaxProductResourceTaxSettingsDefaultsTaxBehavior>(
            (stringValue) => TaxProductResourceTaxSettingsDefaultsTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TaxProductResourceTaxSettingsDefaultsProvider>(
        'provider', provider, (e) => e?.value);
    writer.writeEnumValue<TaxProductResourceTaxSettingsDefaultsTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeAdditionalData(additionalData);
  }
}
