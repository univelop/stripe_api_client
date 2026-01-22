// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_transfer_data_member1.dart';

/// auto generated
/// Composed type wrapper for classes [QuotesPostRequestBodyTransferDataMember1], [String?]
class QuotesPostRequestBodyTransferData implements Parsable {
  ///  Composed type representation for type [QuotesPostRequestBodyTransferDataMember1]
  QuotesPostRequestBodyTransferDataMember1?
      quotesPostRequestBodyTransferDataMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyTransferData createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = QuotesPostRequestBodyTransferData();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.quotesPostRequestBodyTransferDataMember1 =
          QuotesPostRequestBodyTransferDataMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (quotesPostRequestBodyTransferDataMember1 != null) {
      quotesPostRequestBodyTransferDataMember1!
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
      writer.writeObjectValue<QuotesPostRequestBodyTransferDataMember1>(
          null, quotesPostRequestBodyTransferDataMember1);
    }
  }
}
