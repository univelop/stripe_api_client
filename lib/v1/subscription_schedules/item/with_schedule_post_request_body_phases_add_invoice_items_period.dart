// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_period_end.dart';
import './with_schedule_post_request_body_phases_add_invoice_items_period_start.dart';

/// auto generated
class WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodEnd? end;

  ///  The start property
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodStart? start;

  /// Instantiates a new [WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod] and sets the default values.
  WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodEnd>(
        WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodEnd
            .createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node.getObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodStart>(
        WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodStart
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodEnd>('end', end);
    writer.writeObjectValue<
            WithSchedulePostRequestBodyPhasesAddInvoiceItemsPeriodStart>(
        'start', start);
    writer.writeAdditionalData(additionalData);
  }
}
