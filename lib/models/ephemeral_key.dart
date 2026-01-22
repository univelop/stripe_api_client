// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ephemeral_key_object.dart';

/// auto generated
class EphemeralKey implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Time at which the key will expire. Measured in seconds since the Unix epoch.
  int? expires;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  EphemeralKeyObject? object;

  ///  The key's secret. You can use this value to make authorized requests to the Stripe API.
  String? secret;

  /// Instantiates a new [EphemeralKey] and sets the default values.
  EphemeralKey() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static EphemeralKey createFromDiscriminatorValue(ParseNode parseNode) {
    return EphemeralKey();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['expires'] = (node) => expires = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<EphemeralKeyObject>((stringValue) =>
            EphemeralKeyObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['secret'] = (node) => secret = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeIntValue('expires', expires);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<EphemeralKeyObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('secret', secret);
    writer.writeAdditionalData(additionalData);
  }
}
