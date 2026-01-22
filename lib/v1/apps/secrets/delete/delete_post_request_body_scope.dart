// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './delete_post_request_body_scope_type.dart';

/// auto generated
/// Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
class DeletePostRequestBodyScope implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  DeletePostRequestBodyScopeType? type_;

  ///  The user property
  String? user;

  /// Instantiates a new [DeletePostRequestBodyScope] and sets the default values.
  DeletePostRequestBodyScope() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DeletePostRequestBodyScope createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DeletePostRequestBodyScope();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<DeletePostRequestBodyScopeType>((stringValue) =>
            DeletePostRequestBodyScopeType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['user'] = (node) => user = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<DeletePostRequestBodyScopeType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('user', user);
    writer.writeAdditionalData(additionalData);
  }
}
