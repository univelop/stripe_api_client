// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './active_entitlement_feature.dart';
import './active_entitlement_object.dart';

/// auto generated
/// An active entitlement describes access to a feature for a customer.
class ActiveEntitlement implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The [Feature](https://docs.stripe.com/api/entitlements/feature) that the customer is entitled to.
  ActiveEntitlementFeature? feature;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  A unique key you provide as your own system identifier. This may be up to 80 characters.
  String? lookupKey;

  ///  String representing the object's type. Objects of the same type share the same value.
  ActiveEntitlementObject? object;

  /// Instantiates a new [ActiveEntitlement] and sets the default values.
  ActiveEntitlement() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ActiveEntitlement createFromDiscriminatorValue(ParseNode parseNode) {
    return ActiveEntitlement();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['feature'] = (node) => feature =
        node.getObjectValue<ActiveEntitlementFeature>(
            ActiveEntitlementFeature.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ActiveEntitlementObject>((stringValue) =>
            ActiveEntitlementObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ActiveEntitlementFeature>('feature', feature);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeEnumValue<ActiveEntitlementObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
