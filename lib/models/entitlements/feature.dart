// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './feature_metadata.dart';
import './feature_object.dart';

/// auto generated
/// A feature represents a monetizable ability or functionality in your system.Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
class Feature implements AdditionalDataHolder, Parsable {
  ///  Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  A unique key you provide as your own system identifier. This may be up to 80 characters.
  String? lookupKey;

  ///  Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  FeatureMetadata? metadata;

  ///  The feature's name, for your own purpose, not meant to be displayable to the customer.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  FeatureObject? object;

  /// Instantiates a new [Feature] and sets the default values.
  Feature() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Feature createFromDiscriminatorValue(ParseNode parseNode) {
    return Feature();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<FeatureMetadata>(
            FeatureMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FeatureObject>((stringValue) => FeatureObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeObjectValue<FeatureMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<FeatureObject>('object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
