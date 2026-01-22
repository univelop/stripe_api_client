// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_automatic_tax_liability.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The liability property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability?
      liability;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability>(
        'liability', liability);
    writer.writeAdditionalData(additionalData);
  }
}
