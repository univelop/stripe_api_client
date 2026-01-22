// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './add_lines_post_request_body_lines_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<AddLinesPostRequestBodyLinesDiscountsMember1>], [String?]
class AddLinesPostRequestBodyLinesDiscounts implements Parsable {
  ///  Composed type representation for type [Iterable<AddLinesPostRequestBodyLinesDiscountsMember1>]
  Iterable<AddLinesPostRequestBodyLinesDiscountsMember1>?
      addLinesPostRequestBodyLinesDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AddLinesPostRequestBodyLinesDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = AddLinesPostRequestBodyLinesDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                AddLinesPostRequestBodyLinesDiscountsMember1>(
            AddLinesPostRequestBodyLinesDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.addLinesPostRequestBodyLinesDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  AddLinesPostRequestBodyLinesDiscountsMember1>(
              AddLinesPostRequestBodyLinesDiscountsMember1
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
    } else if (addLinesPostRequestBodyLinesDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              AddLinesPostRequestBodyLinesDiscountsMember1>(
          null, addLinesPostRequestBodyLinesDiscountsMember1);
    }
  }
}
