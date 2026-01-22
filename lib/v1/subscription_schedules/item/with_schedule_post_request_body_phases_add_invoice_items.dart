// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_discounts.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_metadata.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_period.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_price_data.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_tax_rates.dart';

/// auto generated
class WithSchedulePostRequestBodyPhasesAddInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<WithSchedulePostRequestBodyPhasesAddInvoiceItemsDiscounts>?
      discounts;

  ///  The metadata property
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsMetadata? metadata;

  ///  The period property
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod? period;

  ///  The price property
  String? price;

  ///  The price_data property
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsTaxRates? taxRates;

  /// Instantiates a new [WithSchedulePostRequestBodyPhasesAddInvoiceItems] and sets the default values.
  WithSchedulePostRequestBodyPhasesAddInvoiceItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyPhasesAddInvoiceItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSchedulePostRequestBodyPhasesAddInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<
                WithSchedulePostRequestBodyPhasesAddInvoiceItemsDiscounts>(
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsMetadata>(
        WithSchedulePostRequestBodyPhasesAddInvoiceItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period = node
        .getObjectValue<WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod>(
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod
                .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPriceData>(
        WithSchedulePostRequestBodyPhasesAddInvoiceItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsTaxRates>(
        WithSchedulePostRequestBodyPhasesAddInvoiceItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
