// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../issuing_physical_bundle_features.dart';
import './physical_bundle_object.dart';
import './physical_bundle_status.dart';
import './physical_bundle_type.dart';

/// auto generated
/// A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
class PhysicalBundle implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The features property
  IssuingPhysicalBundleFeatures? features;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Friendly display name.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  PhysicalBundleObject? object;

  ///  Whether this physical bundle can be used to create cards.
  PhysicalBundleStatus? status;

  ///  Whether this physical bundle is a standard Stripe offering or custom-made for you.
  PhysicalBundleType? type_;

  /// Instantiates a new [PhysicalBundle] and sets the default values.
  PhysicalBundle() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PhysicalBundle createFromDiscriminatorValue(ParseNode parseNode) {
    return PhysicalBundle();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['features'] = (node) => features =
        node.getObjectValue<IssuingPhysicalBundleFeatures>(
            IssuingPhysicalBundleFeatures.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PhysicalBundleObject>((stringValue) =>
            PhysicalBundleObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<PhysicalBundleStatus>((stringValue) =>
            PhysicalBundleStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PhysicalBundleType>((stringValue) =>
            PhysicalBundleType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingPhysicalBundleFeatures>(
        'features', features);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<PhysicalBundleObject>(
        'object', object, (e) => e?.value);
    writer.writeEnumValue<PhysicalBundleStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<PhysicalBundleType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
