// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1>], [String?]
class SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1>]
  Iterable<SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1>?
      subscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1>(
            SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1>(
              SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1
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
    } else if (subscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1>(
          null,
          subscriptionSchedulesPostRequestBodyPhasesItemsDiscountsMember1);
    }
  }
}
