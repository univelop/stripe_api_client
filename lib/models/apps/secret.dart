// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../secret_service_resource_scope.dart';
import './secret_object.dart';

/// auto generated
/// Secret Store is an API that allows Stripe Apps developers to securely persist secrets for use by UI Extensions and app backends.The primary resource in Secret Store is a `secret`. Other apps can't view secrets created by an app. Additionally, secrets are scoped to provide further permission control.All Dashboard users and the app backend share `account` scoped secrets. Use the `account` scope for secrets that don't change per-user, like a third-party API key.A `user` scoped secret is accessible by the app backend and one specific Dashboard user. Use the `user` scope for per-user secrets like per-user OAuth tokens, where different users might have different permissions.Related guide: [Store data between page reloads](https://docs.stripe.com/stripe-apps/store-auth-data-custom-objects)
class Secret implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  If true, indicates that this secret has been deleted
  bool? deleted;

  ///  The Unix timestamp for the expiry time of the secret, after which the secret deletes.
  int? expiresAt;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  A name for the secret that's unique within the scope.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  SecretObject? object;

  ///  The plaintext secret value to be stored.
  String? payload;

  ///  The scope property
  SecretServiceResourceScope? scope;

  /// Instantiates a new [Secret] and sets the default values.
  Secret() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Secret createFromDiscriminatorValue(ParseNode parseNode) {
    return Secret();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SecretObject>((stringValue) => SecretObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['payload'] = (node) => payload = node.getStringValue();
    deserializerMap['scope'] = (node) => scope =
        node.getObjectValue<SecretServiceResourceScope>(
            SecretServiceResourceScope.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeBoolValue('deleted', value: deleted);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<SecretObject>('object', object, (e) => e?.value);
    writer.writeStringValue('payload', payload);
    writer.writeObjectValue<SecretServiceResourceScope>('scope', scope);
    writer.writeAdditionalData(additionalData);
  }
}
