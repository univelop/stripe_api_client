// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_notes_post_request_body_lines_tax_amounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<CreditNotesPostRequestBodyLinesTaxAmountsMember1>], [String?]
class CreditNotesPostRequestBodyLinesTaxAmounts implements Parsable {
  ///  Composed type representation for type [Iterable<CreditNotesPostRequestBodyLinesTaxAmountsMember1>]
  Iterable<CreditNotesPostRequestBodyLinesTaxAmountsMember1>?
      creditNotesPostRequestBodyLinesTaxAmountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotesPostRequestBodyLinesTaxAmounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = CreditNotesPostRequestBodyLinesTaxAmounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                CreditNotesPostRequestBodyLinesTaxAmountsMember1>(
            CreditNotesPostRequestBodyLinesTaxAmountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.creditNotesPostRequestBodyLinesTaxAmountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  CreditNotesPostRequestBodyLinesTaxAmountsMember1>(
              CreditNotesPostRequestBodyLinesTaxAmountsMember1
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
    } else if (creditNotesPostRequestBodyLinesTaxAmountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              CreditNotesPostRequestBodyLinesTaxAmountsMember1>(
          null, creditNotesPostRequestBodyLinesTaxAmountsMember1);
    }
  }
}
