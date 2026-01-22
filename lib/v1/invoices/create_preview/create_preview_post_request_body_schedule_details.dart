// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_billing_mode.dart';
import './create_preview_post_request_body_schedule_details_end_behavior.dart';
import './create_preview_post_request_body_schedule_details_phases.dart';
import './create_preview_post_request_body_schedule_details_proration_behavior.dart';

/// auto generated
/// The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
class CreatePreviewPostRequestBodyScheduleDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_mode property
  CreatePreviewPostRequestBodyScheduleDetailsBillingMode? billingMode;

  ///  The end_behavior property
  CreatePreviewPostRequestBodyScheduleDetailsEndBehavior? endBehavior;

  ///  The phases property
  Iterable<CreatePreviewPostRequestBodyScheduleDetailsPhases>? phases;

  ///  The proration_behavior property
  CreatePreviewPostRequestBodyScheduleDetailsProrationBehavior?
      prorationBehavior;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetails] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_mode'] = (node) => billingMode = node
        .getObjectValue<CreatePreviewPostRequestBodyScheduleDetailsBillingMode>(
            CreatePreviewPostRequestBodyScheduleDetailsBillingMode
                .createFromDiscriminatorValue);
    deserializerMap['end_behavior'] = (node) => endBehavior = node
        .getEnumValue<CreatePreviewPostRequestBodyScheduleDetailsEndBehavior>(
            (stringValue) =>
                CreatePreviewPostRequestBodyScheduleDetailsEndBehavior.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['phases'] = (node) => phases =
        node.getCollectionOfObjectValues<
                CreatePreviewPostRequestBodyScheduleDetailsPhases>(
            CreatePreviewPostRequestBodyScheduleDetailsPhases
                .createFromDiscriminatorValue);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<
                CreatePreviewPostRequestBodyScheduleDetailsProrationBehavior>(
            (stringValue) =>
                CreatePreviewPostRequestBodyScheduleDetailsProrationBehavior
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsBillingMode>(
        'billing_mode', billingMode);
    writer
        .writeEnumValue<CreatePreviewPostRequestBodyScheduleDetailsEndBehavior>(
            'end_behavior', endBehavior, (e) => e?.value);
    writer.writeCollectionOfObjectValues<
        CreatePreviewPostRequestBodyScheduleDetailsPhases>('phases', phases);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
