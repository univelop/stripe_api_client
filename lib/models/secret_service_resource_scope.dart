// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './secret_service_resource_scope_type.dart';

/// auto generated
class SecretServiceResourceScope implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The secret scope type.
  SecretServiceResourceScopeType? type_;

  ///  The user ID, if type is set to "user"
  String? user;

  /// Instantiates a new [SecretServiceResourceScope] and sets the default values.
  SecretServiceResourceScope() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SecretServiceResourceScope createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SecretServiceResourceScope();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SecretServiceResourceScopeType>((stringValue) =>
            SecretServiceResourceScopeType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['user'] = (node) => user = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SecretServiceResourceScopeType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('user', user);
    writer.writeAdditionalData(additionalData);
  }
}
