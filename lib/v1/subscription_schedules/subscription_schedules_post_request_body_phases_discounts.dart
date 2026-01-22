// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1>], [String?]
class SubscriptionSchedulesPostRequestBodyPhasesDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1>]
  Iterable<SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1>?
      subscriptionSchedulesPostRequestBodyPhasesDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SubscriptionSchedulesPostRequestBodyPhasesDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1>(
            SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionSchedulesPostRequestBodyPhasesDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1>(
              SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1
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
    } else if (subscriptionSchedulesPostRequestBodyPhasesDiscountsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionSchedulesPostRequestBodyPhasesDiscountsMember1>(
          null, subscriptionSchedulesPostRequestBodyPhasesDiscountsMember1);
    }
  }
}
