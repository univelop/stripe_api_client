// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_item_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithItemPostRequestBodyDiscountsMember1>], [String?]
class WithItemPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithItemPostRequestBodyDiscountsMember1>]
  Iterable<WithItemPostRequestBodyDiscountsMember1>?
      withItemPostRequestBodyDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithItemPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithItemPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<WithItemPostRequestBodyDiscountsMember1>(
            WithItemPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withItemPostRequestBodyDiscountsMember1 = parseNode
          .getCollectionOfObjectValues<WithItemPostRequestBodyDiscountsMember1>(
              WithItemPostRequestBodyDiscountsMember1
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
    } else if (withItemPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithItemPostRequestBodyDiscountsMember1>(
          null, withItemPostRequestBodyDiscountsMember1);
    }
  }
}
