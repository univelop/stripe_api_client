// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_automatic_tax_liability_type.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiabilityType?
      type_;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiability();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiabilityType>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiabilityType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAutomaticTaxLiabilityType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
