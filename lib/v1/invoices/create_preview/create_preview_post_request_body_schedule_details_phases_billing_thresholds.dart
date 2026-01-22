// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_billing_thresholds_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1], [String?]
class CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds
    implements Parsable {
  ///  Composed type representation for type [CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1]
  CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1?
      createPreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholds();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.createPreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1 =
          CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (createPreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1 !=
        null) {
      createPreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              CreatePreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1>(
          null,
          createPreviewPostRequestBodyScheduleDetailsPhasesBillingThresholdsMember1);
    }
  }
}
