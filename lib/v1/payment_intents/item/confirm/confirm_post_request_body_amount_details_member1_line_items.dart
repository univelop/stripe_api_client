// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_amount_details_member1_line_items_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1>], [String?]
class ConfirmPostRequestBodyAmountDetailsMember1LineItems implements Parsable {
  ///  Composed type representation for type [Iterable<ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1>]
  Iterable<ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1>?
      confirmPostRequestBodyAmountDetailsMember1LineItemsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyAmountDetailsMember1LineItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyAmountDetailsMember1LineItems();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1>(
            ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.confirmPostRequestBodyAmountDetailsMember1LineItemsMember1 =
          parseNode.getCollectionOfObjectValues<
                  ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1>(
              ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1
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
    } else if (confirmPostRequestBodyAmountDetailsMember1LineItemsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              ConfirmPostRequestBodyAmountDetailsMember1LineItemsMember1>(
          null, confirmPostRequestBodyAmountDetailsMember1LineItemsMember1);
    }
  }
}
