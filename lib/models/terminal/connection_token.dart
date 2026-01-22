// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connection_token_object.dart';

/// auto generated
/// A Connection Token is used by the Stripe Terminal SDK to connect to a reader.Related guide: [Fleet management](https://docs.stripe.com/terminal/fleet/locations)
class ConnectionToken implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The id of the location that this connection token is scoped to. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://docs.stripe.com/terminal/fleet/locations-and-zones?dashboard-or-api=api#connection-tokens).
  String? location;

  ///  String representing the object's type. Objects of the same type share the same value.
  ConnectionTokenObject? object;

  ///  Your application should pass this token to the Stripe Terminal SDK.
  String? secret;

  /// Instantiates a new [ConnectionToken] and sets the default values.
  ConnectionToken() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectionToken createFromDiscriminatorValue(ParseNode parseNode) {
    return ConnectionToken();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['location'] = (node) => location = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ConnectionTokenObject>((stringValue) =>
            ConnectionTokenObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['secret'] = (node) => secret = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('location', location);
    writer.writeEnumValue<ConnectionTokenObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('secret', secret);
    writer.writeAdditionalData(additionalData);
  }
}
