// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_discounts.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_metadata.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_period.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_price_data.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_tax_rates.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<
          CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsDiscounts>?
      discounts;

  ///  The metadata property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsMetadata?
      metadata;

  ///  The period property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod?
      period;

  ///  The price property
  String? price;

  ///  The price_data property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPriceData?
      priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsTaxRates?
      taxRates;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'discounts'] = (node) => discounts = node.getCollectionOfObjectValues<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsDiscounts>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsMetadata>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod
            .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPriceData>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsTaxRates>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
