// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discounts_resource_stackable_discount.dart';
import './subscription_schedule_add_invoice_item_metadata.dart';
import './subscription_schedule_add_invoice_item_period.dart';
import './subscription_schedule_add_invoice_item_price.dart';
import './tax_rate.dart';

/// auto generated
/// An Add Invoice Item describes the prices and quantities that will be added as pending invoice items when entering a phase.
class SubscriptionScheduleAddInvoiceItem
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The stackable discounts that will be applied to the item.
  Iterable<DiscountsResourceStackableDiscount>? discounts;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SubscriptionScheduleAddInvoiceItemMetadata? metadata;

  ///  The period property
  SubscriptionScheduleAddInvoiceItemPeriod? period;

  ///  ID of the price used to generate the invoice item.
  SubscriptionScheduleAddInvoiceItemPrice? price;

  ///  The quantity of the invoice item.
  int? quantity;

  ///  The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
  Iterable<TaxRate>? taxRates;

  /// Instantiates a new [SubscriptionScheduleAddInvoiceItem] and sets the default values.
  SubscriptionScheduleAddInvoiceItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionScheduleAddInvoiceItem createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionScheduleAddInvoiceItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<DiscountsResourceStackableDiscount>(
            DiscountsResourceStackableDiscount.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SubscriptionScheduleAddInvoiceItemMetadata>(
            SubscriptionScheduleAddInvoiceItemMetadata
                .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period = node.getObjectValue<
            SubscriptionScheduleAddInvoiceItemPeriod>(
        SubscriptionScheduleAddInvoiceItemPeriod.createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getObjectValue<
            SubscriptionScheduleAddInvoiceItemPrice>(
        SubscriptionScheduleAddInvoiceItemPrice.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getCollectionOfObjectValues<TaxRate>(
            TaxRate.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<DiscountsResourceStackableDiscount>(
        'discounts', discounts);
    writer.writeObjectValue<SubscriptionScheduleAddInvoiceItemMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<SubscriptionScheduleAddInvoiceItemPeriod>(
        'period', period);
    writer.writeObjectValue<SubscriptionScheduleAddInvoiceItemPrice>(
        'price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeCollectionOfObjectValues<TaxRate>('tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
