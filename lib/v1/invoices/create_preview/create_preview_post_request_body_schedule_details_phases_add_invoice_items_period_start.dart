// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_period_start_type.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp property
  int? timestamp;

  ///  The type property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStartType?
      type_;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStartType>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStartType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('timestamp', timestamp);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStartType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
