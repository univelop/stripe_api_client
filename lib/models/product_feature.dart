// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './entitlements/feature.dart';
import './product_feature_object.dart';

/// auto generated
/// A product_feature represents an attachment between a feature and a product.When a product is purchased that has a feature attached, Stripe will create an entitlement to the feature for the purchasing customer.
class ProductFeature implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A feature represents a monetizable ability or functionality in your system.Features can be assigned to products, and when those products are purchased, Stripe will create an entitlement to the feature for the purchasing customer.
  Feature? entitlementFeature;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  ProductFeatureObject? object;

  /// Instantiates a new [ProductFeature] and sets the default values.
  ProductFeature() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ProductFeature createFromDiscriminatorValue(ParseNode parseNode) {
    return ProductFeature();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['entitlement_feature'] = (node) => entitlementFeature =
        node.getObjectValue<Feature>(Feature.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ProductFeatureObject>((stringValue) =>
            ProductFeatureObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Feature>('entitlement_feature', entitlementFeature);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ProductFeatureObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
