// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_period_end.dart';
import './create_preview_post_request_body_schedule_details_phases_add_invoice_items_period_start.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd?
      end;

  ///  The start property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart?
      start;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd
            .createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodEnd>(
        'end', end);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesAddInvoiceItemsPeriodStart>(
        'start', start);
    writer.writeAdditionalData(additionalData);
  }
}
