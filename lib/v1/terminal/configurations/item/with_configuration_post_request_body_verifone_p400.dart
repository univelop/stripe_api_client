// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_verifone_p400_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithConfigurationPostRequestBodyVerifoneP400Member1]
class WithConfigurationPostRequestBodyVerifoneP400 implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithConfigurationPostRequestBodyVerifoneP400Member1]
  WithConfigurationPostRequestBodyVerifoneP400Member1?
      withConfigurationPostRequestBodyVerifoneP400Member1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyVerifoneP400
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithConfigurationPostRequestBodyVerifoneP400();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withConfigurationPostRequestBodyVerifoneP400Member1 =
          WithConfigurationPostRequestBodyVerifoneP400Member1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withConfigurationPostRequestBodyVerifoneP400Member1 != null) {
      withConfigurationPostRequestBodyVerifoneP400Member1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              WithConfigurationPostRequestBodyVerifoneP400Member1>(
          null, withConfigurationPostRequestBodyVerifoneP400Member1);
    }
  }
}
