// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_lines_post_request_body_lines_tax_amounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<UpdateLinesPostRequestBodyLinesTaxAmountsMember1>], [String?]
class UpdateLinesPostRequestBodyLinesTaxAmounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<UpdateLinesPostRequestBodyLinesTaxAmountsMember1>]
  Iterable<UpdateLinesPostRequestBodyLinesTaxAmountsMember1>?
      updateLinesPostRequestBodyLinesTaxAmountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UpdateLinesPostRequestBodyLinesTaxAmounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = UpdateLinesPostRequestBodyLinesTaxAmounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                UpdateLinesPostRequestBodyLinesTaxAmountsMember1>(
            UpdateLinesPostRequestBodyLinesTaxAmountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.updateLinesPostRequestBodyLinesTaxAmountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  UpdateLinesPostRequestBodyLinesTaxAmountsMember1>(
              UpdateLinesPostRequestBodyLinesTaxAmountsMember1
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
    } else if (updateLinesPostRequestBodyLinesTaxAmountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              UpdateLinesPostRequestBodyLinesTaxAmountsMember1>(
          null, updateLinesPostRequestBodyLinesTaxAmountsMember1);
    }
  }
}
