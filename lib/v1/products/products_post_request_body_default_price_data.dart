// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './products_post_request_body_default_price_data_currency_options.dart';
import './products_post_request_body_default_price_data_custom_unit_amount.dart';
import './products_post_request_body_default_price_data_metadata.dart';
import './products_post_request_body_default_price_data_recurring.dart';
import './products_post_request_body_default_price_data_tax_behavior.dart';

/// auto generated
/// Data used to generate a new [Price](https://docs.stripe.com/api/prices) object. This Price will be set as the default price for this product.
class ProductsPostRequestBodyDefaultPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The currency_options property
  ProductsPostRequestBodyDefaultPriceDataCurrencyOptions? currencyOptions;

  ///  The custom_unit_amount property
  ProductsPostRequestBodyDefaultPriceDataCustomUnitAmount? customUnitAmount;

  ///  The metadata property
  ProductsPostRequestBodyDefaultPriceDataMetadata? metadata;

  ///  The recurring property
  ProductsPostRequestBodyDefaultPriceDataRecurring? recurring;

  ///  The tax_behavior property
  ProductsPostRequestBodyDefaultPriceDataTaxBehavior? taxBehavior;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [ProductsPostRequestBodyDefaultPriceData] and sets the default values.
  ProductsPostRequestBodyDefaultPriceData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ProductsPostRequestBodyDefaultPriceData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ProductsPostRequestBodyDefaultPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_options'] = (node) => currencyOptions = node
        .getObjectValue<ProductsPostRequestBodyDefaultPriceDataCurrencyOptions>(
            ProductsPostRequestBodyDefaultPriceDataCurrencyOptions
                .createFromDiscriminatorValue);
    deserializerMap['custom_unit_amount'] = (node) => customUnitAmount =
        node.getObjectValue<
                ProductsPostRequestBodyDefaultPriceDataCustomUnitAmount>(
            ProductsPostRequestBodyDefaultPriceDataCustomUnitAmount
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ProductsPostRequestBodyDefaultPriceDataMetadata>(
            ProductsPostRequestBodyDefaultPriceDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['recurring'] = (node) => recurring =
        node.getObjectValue<ProductsPostRequestBodyDefaultPriceDataRecurring>(
            ProductsPostRequestBodyDefaultPriceDataRecurring
                .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<ProductsPostRequestBodyDefaultPriceDataTaxBehavior>(
            (stringValue) => ProductsPostRequestBodyDefaultPriceDataTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            ProductsPostRequestBodyDefaultPriceDataCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeObjectValue<
            ProductsPostRequestBodyDefaultPriceDataCustomUnitAmount>(
        'custom_unit_amount', customUnitAmount);
    writer.writeObjectValue<ProductsPostRequestBodyDefaultPriceDataMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<ProductsPostRequestBodyDefaultPriceDataRecurring>(
        'recurring', recurring);
    writer.writeEnumValue<ProductsPostRequestBodyDefaultPriceDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
