// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_subscription_details_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1>], [String?]
class CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts
    implements Parsable {
  ///  Composed type representation for type [Iterable<CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1>]
  Iterable<
          CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1>?
      createPreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1>(
            CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.createPreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1>(
              CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1
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
    } else if (createPreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1>(
          null,
          createPreviewPostRequestBodySubscriptionDetailsItemsDiscountsMember1);
    }
  }
}
