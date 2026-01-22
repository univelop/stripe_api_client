// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_person_post_request_body_dob_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithPersonPostRequestBodyDobMember1]
class WithPersonPostRequestBodyDob implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithPersonPostRequestBodyDobMember1]
  WithPersonPostRequestBodyDobMember1? withPersonPostRequestBodyDobMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonPostRequestBodyDob createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithPersonPostRequestBodyDob();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withPersonPostRequestBodyDobMember1 =
          WithPersonPostRequestBodyDobMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withPersonPostRequestBodyDobMember1 != null) {
      withPersonPostRequestBodyDobMember1!
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
      writer.writeObjectValue<WithPersonPostRequestBodyDobMember1>(
          null, withPersonPostRequestBodyDobMember1);
    }
  }
}
