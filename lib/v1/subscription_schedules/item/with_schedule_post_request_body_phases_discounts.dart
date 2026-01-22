// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_phases_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithSchedulePostRequestBodyPhasesDiscountsMember1>], [String?]
class WithSchedulePostRequestBodyPhasesDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithSchedulePostRequestBodyPhasesDiscountsMember1>]
  Iterable<WithSchedulePostRequestBodyPhasesDiscountsMember1>?
      withSchedulePostRequestBodyPhasesDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyPhasesDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithSchedulePostRequestBodyPhasesDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithSchedulePostRequestBodyPhasesDiscountsMember1>(
            WithSchedulePostRequestBodyPhasesDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withSchedulePostRequestBodyPhasesDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithSchedulePostRequestBodyPhasesDiscountsMember1>(
              WithSchedulePostRequestBodyPhasesDiscountsMember1
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
    } else if (withSchedulePostRequestBodyPhasesDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              WithSchedulePostRequestBodyPhasesDiscountsMember1>(
          null, withSchedulePostRequestBodyPhasesDiscountsMember1);
    }
  }
}
