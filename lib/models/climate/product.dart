// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './product_current_prices_per_metric_ton.dart';
import './product_object.dart';
import './supplier.dart';

/// auto generated
/// A Climate product represents a type of carbon removal unit available for reservation.You can retrieve it to see the current price and availability.
class Product implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Current prices for a metric ton of carbon removal in a currency's smallest unit.
  ProductCurrentPricesPerMetricTon? currentPricesPerMetricTon;

  ///  The year in which the carbon removal is expected to be delivered.
  int? deliveryYear;

  ///  Unique identifier for the object. For convenience, Climate product IDs are human-readable stringsthat start with `climsku_`. See [carbon removal inventory](https://stripe.com/docs/climate/orders/carbon-removal-inventory)for a list of available carbon removal products.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The quantity of metric tons available for reservation.
  String? metricTonsAvailable;

  ///  The Climate product's name.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  ProductObject? object;

  ///  The carbon removal suppliers that fulfill orders for this Climate product.
  Iterable<Supplier>? suppliers;

  /// Instantiates a new [Product] and sets the default values.
  Product() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Product createFromDiscriminatorValue(ParseNode parseNode) {
    return Product();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['current_prices_per_metric_ton'] = (node) =>
        currentPricesPerMetricTon =
            node.getObjectValue<ProductCurrentPricesPerMetricTon>(
                ProductCurrentPricesPerMetricTon.createFromDiscriminatorValue);
    deserializerMap['delivery_year'] =
        (node) => deliveryYear = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metric_tons_available'] =
        (node) => metricTonsAvailable = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ProductObject>((stringValue) => ProductObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['suppliers'] = (node) => suppliers =
        node.getCollectionOfObjectValues<Supplier>(
            Supplier.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeObjectValue<ProductCurrentPricesPerMetricTon>(
        'current_prices_per_metric_ton', currentPricesPerMetricTon);
    writer.writeIntValue('delivery_year', deliveryYear);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('metric_tons_available', metricTonsAvailable);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<ProductObject>('object', object, (e) => e?.value);
    writer.writeCollectionOfObjectValues<Supplier>('suppliers', suppliers);
    writer.writeAdditionalData(additionalData);
  }
}
