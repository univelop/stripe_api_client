// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<QuotesPostRequestBodyDiscountsMember1>], [String?]
class QuotesPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [Iterable<QuotesPostRequestBodyDiscountsMember1>]
  Iterable<QuotesPostRequestBodyDiscountsMember1>?
      quotesPostRequestBodyDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = QuotesPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<QuotesPostRequestBodyDiscountsMember1>(
            QuotesPostRequestBodyDiscountsMember1.createFromDiscriminatorValue)
        .isNotEmpty) {
      result.quotesPostRequestBodyDiscountsMember1 = parseNode
          .getCollectionOfObjectValues<QuotesPostRequestBodyDiscountsMember1>(
              QuotesPostRequestBodyDiscountsMember1
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
    } else if (quotesPostRequestBodyDiscountsMember1 != null) {
      writer
          .writeCollectionOfObjectValues<QuotesPostRequestBodyDiscountsMember1>(
              null, quotesPostRequestBodyDiscountsMember1);
    }
  }
}
