// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../climate_removals_location.dart';
import './supplier_object.dart';
import './supplier_removal_pathway.dart';

/// auto generated
/// A supplier of carbon removal.
class Supplier implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object.
  String? id;

  ///  Link to a webpage to learn more about the supplier.
  String? infoUrl;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The locations in which this supplier operates.
  Iterable<ClimateRemovalsLocation>? locations;

  ///  Name of this carbon removal supplier.
  String? name;

  ///  String representing the object’s type. Objects of the same type share the same value.
  SupplierObject? object;

  ///  The scientific pathway used for carbon removal.
  SupplierRemovalPathway? removalPathway;

  /// Instantiates a new [Supplier] and sets the default values.
  Supplier() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Supplier createFromDiscriminatorValue(ParseNode parseNode) {
    return Supplier();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['info_url'] = (node) => infoUrl = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['locations'] = (node) => locations =
        node.getCollectionOfObjectValues<ClimateRemovalsLocation>(
            ClimateRemovalsLocation.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SupplierObject>((stringValue) => SupplierObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['removal_pathway'] = (node) => removalPathway =
        node.getEnumValue<SupplierRemovalPathway>((stringValue) =>
            SupplierRemovalPathway.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeStringValue('info_url', infoUrl);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeCollectionOfObjectValues<ClimateRemovalsLocation>(
        'locations', locations);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<SupplierObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<SupplierRemovalPathway>(
        'removal_pathway', removalPathway, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
