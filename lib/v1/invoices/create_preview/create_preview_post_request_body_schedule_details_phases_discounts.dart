// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1>], [String?]
class CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts
    implements Parsable {
  ///  Composed type representation for type [Iterable<CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1>]
  Iterable<CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1>?
      createPreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1>(
            CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.createPreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1>(
              CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1
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
    } else if (createPreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              CreatePreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1>(
          null,
          createPreviewPostRequestBodyScheduleDetailsPhasesDiscountsMember1);
    }
  }
}
