// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_lines_post_request_body_lines_discounts.dart';
import './update_lines_post_request_body_lines_period.dart';
import './update_lines_post_request_body_lines_price_data.dart';
import './update_lines_post_request_body_lines_pricing.dart';
import './update_lines_post_request_body_lines_tax_amounts.dart';
import './update_lines_post_request_body_lines_tax_rates.dart';

/// auto generated
class UpdateLinesPostRequestBodyLines
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The description property
  String? description;

  ///  The discountable property
  bool? discountable;

  ///  The discounts property
  UpdateLinesPostRequestBodyLinesDiscounts? discounts;

  ///  The id property
  String? id;

  ///  The metadata property
  String? metadata;

  ///  The period property
  UpdateLinesPostRequestBodyLinesPeriod? period;

  ///  The price_data property
  UpdateLinesPostRequestBodyLinesPriceData? priceData;

  ///  The pricing property
  UpdateLinesPostRequestBodyLinesPricing? pricing;

  ///  The quantity property
  int? quantity;

  ///  The tax_amounts property
  UpdateLinesPostRequestBodyLinesTaxAmounts? taxAmounts;

  ///  The tax_rates property
  UpdateLinesPostRequestBodyLinesTaxRates? taxRates;

  /// Instantiates a new [UpdateLinesPostRequestBodyLines] and sets the default values.
  UpdateLinesPostRequestBodyLines() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UpdateLinesPostRequestBodyLines createFromDiscriminatorValue(
      ParseNode parseNode) {
    return UpdateLinesPostRequestBodyLines();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discountable'] =
        (node) => discountable = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            UpdateLinesPostRequestBodyLinesDiscounts>(
        UpdateLinesPostRequestBodyLinesDiscounts.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<UpdateLinesPostRequestBodyLinesPeriod>(
            UpdateLinesPostRequestBodyLinesPeriod.createFromDiscriminatorValue);
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            UpdateLinesPostRequestBodyLinesPriceData>(
        UpdateLinesPostRequestBodyLinesPriceData.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing = node.getObjectValue<
            UpdateLinesPostRequestBodyLinesPricing>(
        UpdateLinesPostRequestBodyLinesPricing.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_amounts'] = (node) => taxAmounts = node.getObjectValue<
            UpdateLinesPostRequestBodyLinesTaxAmounts>(
        UpdateLinesPostRequestBodyLinesTaxAmounts.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            UpdateLinesPostRequestBodyLinesTaxRates>(
        UpdateLinesPostRequestBodyLinesTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeObjectValue<UpdateLinesPostRequestBodyLinesDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<UpdateLinesPostRequestBodyLinesPeriod>(
        'period', period);
    writer.writeObjectValue<UpdateLinesPostRequestBodyLinesPriceData>(
        'price_data', priceData);
    writer.writeObjectValue<UpdateLinesPostRequestBodyLinesPricing>(
        'pricing', pricing);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<UpdateLinesPostRequestBodyLinesTaxAmounts>(
        'tax_amounts', taxAmounts);
    writer.writeObjectValue<UpdateLinesPostRequestBodyLinesTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
