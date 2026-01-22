// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_quote_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithQuotePostRequestBodyDiscountsMember1>], [String?]
class WithQuotePostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithQuotePostRequestBodyDiscountsMember1>]
  Iterable<WithQuotePostRequestBodyDiscountsMember1>?
      withQuotePostRequestBodyDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithQuotePostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<WithQuotePostRequestBodyDiscountsMember1>(
            WithQuotePostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withQuotePostRequestBodyDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithQuotePostRequestBodyDiscountsMember1>(
              WithQuotePostRequestBodyDiscountsMember1
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
    } else if (withQuotePostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithQuotePostRequestBodyDiscountsMember1>(
          null, withQuotePostRequestBodyDiscountsMember1);
    }
  }
}
