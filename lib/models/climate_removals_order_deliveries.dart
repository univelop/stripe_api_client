// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './climate/supplier.dart';
import './climate_removals_location.dart';

/// auto generated
/// The delivery of a specified quantity of carbon for an order.
class ClimateRemovalsOrderDeliveries implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the delivery occurred. Measured in seconds since the Unix epoch.
  int? deliveredAt;

  ///  Specific location of this delivery.
  ClimateRemovalsLocation? location;

  ///  Quantity of carbon removal supplied by this delivery.
  String? metricTons;

  ///  Once retired, a URL to the registry entry for the tons from this delivery.
  String? registryUrl;

  ///  A supplier of carbon removal.
  Supplier? supplier;

  /// Instantiates a new [ClimateRemovalsOrderDeliveries] and sets the default values.
  ClimateRemovalsOrderDeliveries() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ClimateRemovalsOrderDeliveries createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ClimateRemovalsOrderDeliveries();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['delivered_at'] =
        (node) => deliveredAt = node.getIntValue();
    deserializerMap['location'] = (node) => location =
        node.getObjectValue<ClimateRemovalsLocation>(
            ClimateRemovalsLocation.createFromDiscriminatorValue);
    deserializerMap['metric_tons'] =
        (node) => metricTons = node.getStringValue();
    deserializerMap['registry_url'] =
        (node) => registryUrl = node.getStringValue();
    deserializerMap['supplier'] = (node) => supplier =
        node.getObjectValue<Supplier>(Supplier.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('delivered_at', deliveredAt);
    writer.writeObjectValue<ClimateRemovalsLocation>('location', location);
    writer.writeStringValue('metric_tons', metricTons);
    writer.writeStringValue('registry_url', registryUrl);
    writer.writeObjectValue<Supplier>('supplier', supplier);
    writer.writeAdditionalData(additionalData);
  }
}
