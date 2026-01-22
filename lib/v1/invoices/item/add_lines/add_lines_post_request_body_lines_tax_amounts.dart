// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './add_lines_post_request_body_lines_tax_amounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<AddLinesPostRequestBodyLinesTaxAmountsMember1>], [String?]
class AddLinesPostRequestBodyLinesTaxAmounts implements Parsable {
  ///  Composed type representation for type [Iterable<AddLinesPostRequestBodyLinesTaxAmountsMember1>]
  Iterable<AddLinesPostRequestBodyLinesTaxAmountsMember1>?
      addLinesPostRequestBodyLinesTaxAmountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AddLinesPostRequestBodyLinesTaxAmounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = AddLinesPostRequestBodyLinesTaxAmounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                AddLinesPostRequestBodyLinesTaxAmountsMember1>(
            AddLinesPostRequestBodyLinesTaxAmountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.addLinesPostRequestBodyLinesTaxAmountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  AddLinesPostRequestBodyLinesTaxAmountsMember1>(
              AddLinesPostRequestBodyLinesTaxAmountsMember1
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
    } else if (addLinesPostRequestBodyLinesTaxAmountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              AddLinesPostRequestBodyLinesTaxAmountsMember1>(
          null, addLinesPostRequestBodyLinesTaxAmountsMember1);
    }
  }
}
