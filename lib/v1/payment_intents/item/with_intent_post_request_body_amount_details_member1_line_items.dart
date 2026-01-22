// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_amount_details_member1_line_items_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1>], [String?]
class WithIntentPostRequestBodyAmountDetailsMember1LineItems
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1>]
  Iterable<WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1>?
      withIntentPostRequestBodyAmountDetailsMember1LineItemsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyAmountDetailsMember1LineItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithIntentPostRequestBodyAmountDetailsMember1LineItems();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1>(
            WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withIntentPostRequestBodyAmountDetailsMember1LineItemsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1>(
              WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1
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
    } else if (withIntentPostRequestBodyAmountDetailsMember1LineItemsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithIntentPostRequestBodyAmountDetailsMember1LineItemsMember1>(
          null, withIntentPostRequestBodyAmountDetailsMember1LineItemsMember1);
    }
  }
}
