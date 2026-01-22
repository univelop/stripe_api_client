// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_line_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<QuotesPostRequestBodyLineItemsDiscountsMember1>], [String?]
class QuotesPostRequestBodyLineItemsDiscounts implements Parsable {
  ///  Composed type representation for type [Iterable<QuotesPostRequestBodyLineItemsDiscountsMember1>]
  Iterable<QuotesPostRequestBodyLineItemsDiscountsMember1>?
      quotesPostRequestBodyLineItemsDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyLineItemsDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = QuotesPostRequestBodyLineItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                QuotesPostRequestBodyLineItemsDiscountsMember1>(
            QuotesPostRequestBodyLineItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.quotesPostRequestBodyLineItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  QuotesPostRequestBodyLineItemsDiscountsMember1>(
              QuotesPostRequestBodyLineItemsDiscountsMember1
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
    } else if (quotesPostRequestBodyLineItemsDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              QuotesPostRequestBodyLineItemsDiscountsMember1>(
          null, quotesPostRequestBodyLineItemsDiscountsMember1);
    }
  }
}
