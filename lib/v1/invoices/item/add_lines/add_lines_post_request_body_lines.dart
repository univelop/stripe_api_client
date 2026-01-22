// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './add_lines_post_request_body_lines_discounts.dart';
import './add_lines_post_request_body_lines_period.dart';
import './add_lines_post_request_body_lines_price_data.dart';
import './add_lines_post_request_body_lines_pricing.dart';
import './add_lines_post_request_body_lines_tax_amounts.dart';
import './add_lines_post_request_body_lines_tax_rates.dart';

/// auto generated
class AddLinesPostRequestBodyLines implements AdditionalDataHolder, Parsable {
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
  AddLinesPostRequestBodyLinesDiscounts? discounts;

  ///  The invoice_item property
  String? invoiceItem;

  ///  The metadata property
  String? metadata;

  ///  The period property
  AddLinesPostRequestBodyLinesPeriod? period;

  ///  The price_data property
  AddLinesPostRequestBodyLinesPriceData? priceData;

  ///  The pricing property
  AddLinesPostRequestBodyLinesPricing? pricing;

  ///  The quantity property
  int? quantity;

  ///  The tax_amounts property
  AddLinesPostRequestBodyLinesTaxAmounts? taxAmounts;

  ///  The tax_rates property
  AddLinesPostRequestBodyLinesTaxRates? taxRates;

  /// Instantiates a new [AddLinesPostRequestBodyLines] and sets the default values.
  AddLinesPostRequestBodyLines() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AddLinesPostRequestBodyLines createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AddLinesPostRequestBodyLines();
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
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<AddLinesPostRequestBodyLinesDiscounts>(
            AddLinesPostRequestBodyLinesDiscounts.createFromDiscriminatorValue);
    deserializerMap['invoice_item'] =
        (node) => invoiceItem = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<AddLinesPostRequestBodyLinesPeriod>(
            AddLinesPostRequestBodyLinesPeriod.createFromDiscriminatorValue);
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<AddLinesPostRequestBodyLinesPriceData>(
            AddLinesPostRequestBodyLinesPriceData.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing =
        node.getObjectValue<AddLinesPostRequestBodyLinesPricing>(
            AddLinesPostRequestBodyLinesPricing.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_amounts'] = (node) => taxAmounts = node.getObjectValue<
            AddLinesPostRequestBodyLinesTaxAmounts>(
        AddLinesPostRequestBodyLinesTaxAmounts.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<AddLinesPostRequestBodyLinesTaxRates>(
            AddLinesPostRequestBodyLinesTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeObjectValue<AddLinesPostRequestBodyLinesDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('invoice_item', invoiceItem);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<AddLinesPostRequestBodyLinesPeriod>(
        'period', period);
    writer.writeObjectValue<AddLinesPostRequestBodyLinesPriceData>(
        'price_data', priceData);
    writer.writeObjectValue<AddLinesPostRequestBodyLinesPricing>(
        'pricing', pricing);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<AddLinesPostRequestBodyLinesTaxAmounts>(
        'tax_amounts', taxAmounts);
    writer.writeObjectValue<AddLinesPostRequestBodyLinesTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
