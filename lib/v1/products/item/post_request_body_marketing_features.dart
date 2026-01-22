// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './post_request_body_marketing_features_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<PostRequestBodyMarketingFeaturesMember1>], [String?]
class PostRequestBodyMarketingFeatures implements Parsable {
  ///  Composed type representation for type [Iterable<PostRequestBodyMarketingFeaturesMember1>]
  Iterable<PostRequestBodyMarketingFeaturesMember1>?
      postRequestBodyMarketingFeaturesMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PostRequestBodyMarketingFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = PostRequestBodyMarketingFeatures();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<PostRequestBodyMarketingFeaturesMember1>(
            PostRequestBodyMarketingFeaturesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.postRequestBodyMarketingFeaturesMember1 = parseNode
          .getCollectionOfObjectValues<PostRequestBodyMarketingFeaturesMember1>(
              PostRequestBodyMarketingFeaturesMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (postRequestBodyMarketingFeaturesMember1 != null) {
      writer.writeCollectionOfObjectValues<
              PostRequestBodyMarketingFeaturesMember1>(
          null, postRequestBodyMarketingFeaturesMember1);
    }
  }
}
