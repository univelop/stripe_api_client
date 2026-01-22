// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../climate_removals_beneficiary.dart';
import '../climate_removals_order_deliveries.dart';
import './order_cancellation_reason.dart';
import './order_metadata.dart';
import './order_object.dart';
import './order_product.dart';
import './order_status.dart';

/// auto generated
/// Orders represent your intent to purchase a particular Climate product. When you create an order, thepayment is deducted from your merchant balance.
class Order implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total amount of [Frontier](https://frontierclimate.com/)'s service fees in the currency's smallest unit.
  int? amountFees;

  ///  Total amount of the carbon removal in the currency's smallest unit.
  int? amountSubtotal;

  ///  Total amount of the order including fees in the currency's smallest unit.
  int? amountTotal;

  ///  The beneficiary property
  ClimateRemovalsBeneficiary? beneficiary;

  ///  Time at which the order was canceled. Measured in seconds since the Unix epoch.
  int? canceledAt;

  ///  Reason for the cancellation of this order.
  OrderCancellationReason? cancellationReason;

  ///  For delivered orders, a URL to a delivery certificate for the order.
  String? certificate;

  ///  Time at which the order was confirmed. Measured in seconds since the Unix epoch.
  int? confirmedAt;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase, representing the currency for this order.
  String? currency;

  ///  Time at which the order's expected_delivery_year was delayed. Measured in seconds since the Unix epoch.
  int? delayedAt;

  ///  Time at which the order was delivered. Measured in seconds since the Unix epoch.
  int? deliveredAt;

  ///  Details about the delivery of carbon removal for this order.
  Iterable<ClimateRemovalsOrderDeliveries>? deliveryDetails;

  ///  The year this order is expected to be delivered.
  int? expectedDeliveryYear;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  OrderMetadata? metadata;

  ///  Quantity of carbon removal that is included in this order.
  String? metricTons;

  ///  String representing the object's type. Objects of the same type share the same value.
  OrderObject? object;

  ///  Unique ID for the Climate `Product` this order is purchasing.
  OrderProduct? product;

  ///  Time at which the order's product was substituted for a different product. Measured in seconds since the Unix epoch.
  int? productSubstitutedAt;

  ///  The current status of this order.
  OrderStatus? status;

  /// Instantiates a new [Order] and sets the default values.
  Order() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Order createFromDiscriminatorValue(ParseNode parseNode) {
    return Order();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_fees'] = (node) => amountFees = node.getIntValue();
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['beneficiary'] = (node) => beneficiary =
        node.getObjectValue<ClimateRemovalsBeneficiary>(
            ClimateRemovalsBeneficiary.createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getEnumValue<OrderCancellationReason>((stringValue) =>
            OrderCancellationReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['certificate'] =
        (node) => certificate = node.getStringValue();
    deserializerMap['confirmed_at'] =
        (node) => confirmedAt = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['delayed_at'] = (node) => delayedAt = node.getIntValue();
    deserializerMap['delivered_at'] =
        (node) => deliveredAt = node.getIntValue();
    deserializerMap['delivery_details'] = (node) => deliveryDetails =
        node.getCollectionOfObjectValues<ClimateRemovalsOrderDeliveries>(
            ClimateRemovalsOrderDeliveries.createFromDiscriminatorValue);
    deserializerMap['expected_delivery_year'] =
        (node) => expectedDeliveryYear = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<OrderMetadata>(
            OrderMetadata.createFromDiscriminatorValue);
    deserializerMap['metric_tons'] =
        (node) => metricTons = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<OrderObject>((stringValue) => OrderObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['product'] = (node) => product =
        node.getObjectValue<OrderProduct>(
            OrderProduct.createFromDiscriminatorValue);
    deserializerMap['product_substituted_at'] =
        (node) => productSubstitutedAt = node.getIntValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<OrderStatus>((stringValue) => OrderStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_fees', amountFees);
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeObjectValue<ClimateRemovalsBeneficiary>(
        'beneficiary', beneficiary);
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeEnumValue<OrderCancellationReason>(
        'cancellation_reason', cancellationReason, (e) => e?.value);
    writer.writeStringValue('certificate', certificate);
    writer.writeIntValue('confirmed_at', confirmedAt);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeIntValue('delayed_at', delayedAt);
    writer.writeIntValue('delivered_at', deliveredAt);
    writer.writeCollectionOfObjectValues<ClimateRemovalsOrderDeliveries>(
        'delivery_details', deliveryDetails);
    writer.writeIntValue('expected_delivery_year', expectedDeliveryYear);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<OrderMetadata>('metadata', metadata);
    writer.writeStringValue('metric_tons', metricTons);
    writer.writeEnumValue<OrderObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<OrderProduct>('product', product);
    writer.writeIntValue('product_substituted_at', productSubstitutedAt);
    writer.writeEnumValue<OrderStatus>('status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
