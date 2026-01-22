// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_phases_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithSchedulePostRequestBodyPhasesItemsDiscountsMember1>], [String?]
class WithSchedulePostRequestBodyPhasesItemsDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithSchedulePostRequestBodyPhasesItemsDiscountsMember1>]
  Iterable<WithSchedulePostRequestBodyPhasesItemsDiscountsMember1>?
      withSchedulePostRequestBodyPhasesItemsDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyPhasesItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithSchedulePostRequestBodyPhasesItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithSchedulePostRequestBodyPhasesItemsDiscountsMember1>(
            WithSchedulePostRequestBodyPhasesItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withSchedulePostRequestBodyPhasesItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithSchedulePostRequestBodyPhasesItemsDiscountsMember1>(
              WithSchedulePostRequestBodyPhasesItemsDiscountsMember1
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
    } else if (withSchedulePostRequestBodyPhasesItemsDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithSchedulePostRequestBodyPhasesItemsDiscountsMember1>(
          null, withSchedulePostRequestBodyPhasesItemsDiscountsMember1);
    }
  }
}
