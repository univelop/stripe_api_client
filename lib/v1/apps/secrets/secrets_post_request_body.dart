// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './secrets_post_request_body_scope.dart';

/// auto generated
class SecretsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The Unix timestamp for the expiry time of the secret, after which the secret deletes.
  int? expiresAt;

  ///  A name for the secret that's unique within the scope.
  String? name;

  ///  The plaintext secret value to be stored.
  String? payload;

  ///  Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
  SecretsPostRequestBodyScope? scope;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SecretsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SecretsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['payload'] = (node) => payload = node.getStringValue();
    deserializerMap['scope'] = (node) => scope =
        node.getObjectValue<SecretsPostRequestBodyScope>(
            SecretsPostRequestBodyScope.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('name', name);
    writer.writeStringValue('payload', payload);
    writer.writeObjectValue<SecretsPostRequestBodyScope>('scope', scope);
  }
}
