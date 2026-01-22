// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_quote_post_request_body_line_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithQuotePostRequestBodyLineItemsDiscountsMember1>], [String?]
class WithQuotePostRequestBodyLineItemsDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithQuotePostRequestBodyLineItemsDiscountsMember1>]
  Iterable<WithQuotePostRequestBodyLineItemsDiscountsMember1>?
      withQuotePostRequestBodyLineItemsDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBodyLineItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithQuotePostRequestBodyLineItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithQuotePostRequestBodyLineItemsDiscountsMember1>(
            WithQuotePostRequestBodyLineItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withQuotePostRequestBodyLineItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithQuotePostRequestBodyLineItemsDiscountsMember1>(
              WithQuotePostRequestBodyLineItemsDiscountsMember1
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
    } else if (withQuotePostRequestBodyLineItemsDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithQuotePostRequestBodyLineItemsDiscountsMember1>(
          null, withQuotePostRequestBodyLineItemsDiscountsMember1);
    }
  }
}
