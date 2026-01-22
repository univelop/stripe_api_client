// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_billing_mode_flexible.dart';
import './create_preview_post_request_body_schedule_details_billing_mode_type.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsBillingMode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The flexible property
  CreatePreviewPostRequestBodyScheduleDetailsBillingModeFlexible? flexible;

  ///  The type property
  CreatePreviewPostRequestBodyScheduleDetailsBillingModeType? type_;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsBillingMode] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsBillingMode()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsBillingMode
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsBillingMode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flexible'] = (node) => flexible = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsBillingModeFlexible>(
        CreatePreviewPostRequestBodyScheduleDetailsBillingModeFlexible
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsBillingModeType>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsBillingModeType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsBillingModeFlexible>(
        'flexible', flexible);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsBillingModeType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
