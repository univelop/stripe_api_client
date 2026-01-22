// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_period_end_type.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp property
  int? timestamp;

  ///  The type property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEndType?
      type_;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEndType>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEndType
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
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEndType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
