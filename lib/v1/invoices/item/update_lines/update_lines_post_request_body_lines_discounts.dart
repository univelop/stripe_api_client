// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_lines_post_request_body_lines_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<UpdateLinesPostRequestBodyLinesDiscountsMember1>], [String?]
class UpdateLinesPostRequestBodyLinesDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<UpdateLinesPostRequestBodyLinesDiscountsMember1>]
  Iterable<UpdateLinesPostRequestBodyLinesDiscountsMember1>?
      updateLinesPostRequestBodyLinesDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UpdateLinesPostRequestBodyLinesDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = UpdateLinesPostRequestBodyLinesDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                UpdateLinesPostRequestBodyLinesDiscountsMember1>(
            UpdateLinesPostRequestBodyLinesDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.updateLinesPostRequestBodyLinesDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  UpdateLinesPostRequestBodyLinesDiscountsMember1>(
              UpdateLinesPostRequestBodyLinesDiscountsMember1
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
    } else if (updateLinesPostRequestBodyLinesDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              UpdateLinesPostRequestBodyLinesDiscountsMember1>(
          null, updateLinesPostRequestBodyLinesDiscountsMember1);
    }
  }
}
