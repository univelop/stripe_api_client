// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './post_request_body_package_dimensions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [PostRequestBodyPackageDimensionsMember1], [String?]
class PostRequestBodyPackageDimensions implements Parsable {
  ///  Composed type representation for type [PostRequestBodyPackageDimensionsMember1]
  PostRequestBodyPackageDimensionsMember1?
      postRequestBodyPackageDimensionsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PostRequestBodyPackageDimensions createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PostRequestBodyPackageDimensions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.postRequestBodyPackageDimensionsMember1 =
          PostRequestBodyPackageDimensionsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (postRequestBodyPackageDimensionsMember1 != null) {
      postRequestBodyPackageDimensionsMember1!
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
      writer.writeObjectValue<PostRequestBodyPackageDimensionsMember1>(
          null, postRequestBodyPackageDimensionsMember1);
    }
  }
}
