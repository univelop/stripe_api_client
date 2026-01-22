// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_invoice_items_discounts.dart';
import './create_preview_post_request_body_invoice_items_period.dart';
import './create_preview_post_request_body_invoice_items_price_data.dart';
import './create_preview_post_request_body_invoice_items_tax_behavior.dart';
import './create_preview_post_request_body_invoice_items_tax_code.dart';
import './create_preview_post_request_body_invoice_items_tax_rates.dart';

/// auto generated
class CreatePreviewPostRequestBodyInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The currency property
  String? currency;

  ///  The description property
  String? description;

  ///  The discountable property
  bool? discountable;

  ///  The discounts property
  CreatePreviewPostRequestBodyInvoiceItemsDiscounts? discounts;

  ///  The invoiceitem property
  String? invoiceitem;

  ///  The metadata property
  String? metadata;

  ///  The period property
  CreatePreviewPostRequestBodyInvoiceItemsPeriod? period;

  ///  The price property
  String? price;

  ///  The price_data property
  CreatePreviewPostRequestBodyInvoiceItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_behavior property
  CreatePreviewPostRequestBodyInvoiceItemsTaxBehavior? taxBehavior;

  ///  The tax_code property
  CreatePreviewPostRequestBodyInvoiceItemsTaxCode? taxCode;

  ///  The tax_rates property
  CreatePreviewPostRequestBodyInvoiceItemsTaxRates? taxRates;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [CreatePreviewPostRequestBodyInvoiceItems] and sets the default values.
  CreatePreviewPostRequestBodyInvoiceItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyInvoiceItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreatePreviewPostRequestBodyInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discountable'] =
        (node) => discountable = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<CreatePreviewPostRequestBodyInvoiceItemsDiscounts>(
            CreatePreviewPostRequestBodyInvoiceItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['invoiceitem'] =
        (node) => invoiceitem = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<CreatePreviewPostRequestBodyInvoiceItemsPeriod>(
            CreatePreviewPostRequestBodyInvoiceItemsPeriod
                .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<CreatePreviewPostRequestBodyInvoiceItemsPriceData>(
            CreatePreviewPostRequestBodyInvoiceItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<CreatePreviewPostRequestBodyInvoiceItemsTaxBehavior>(
            (stringValue) => CreatePreviewPostRequestBodyInvoiceItemsTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode =
        node.getObjectValue<CreatePreviewPostRequestBodyInvoiceItemsTaxCode>(
            CreatePreviewPostRequestBodyInvoiceItemsTaxCode
                .createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<CreatePreviewPostRequestBodyInvoiceItemsTaxRates>(
            CreatePreviewPostRequestBodyInvoiceItemsTaxRates
                .createFromDiscriminatorValue);
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeObjectValue<CreatePreviewPostRequestBodyInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('invoiceitem', invoiceitem);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<CreatePreviewPostRequestBodyInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<CreatePreviewPostRequestBodyInvoiceItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeEnumValue<CreatePreviewPostRequestBodyInvoiceItemsTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeObjectValue<CreatePreviewPostRequestBodyInvoiceItemsTaxCode>(
        'tax_code', taxCode);
    writer.writeObjectValue<CreatePreviewPostRequestBodyInvoiceItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
