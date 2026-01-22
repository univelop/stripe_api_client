// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class FeaturesPostRequestBody implements Parsable {
  ///  The ID of the [Feature](https://docs.stripe.com/api/entitlements/feature) object attached to this product.
  String? entitlementFeature;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['entitlement_feature'] =
        (node) => entitlementFeature = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('entitlement_feature', entitlementFeature);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
