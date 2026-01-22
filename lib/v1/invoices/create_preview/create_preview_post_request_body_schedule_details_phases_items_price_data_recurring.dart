// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_items_price_data_recurring_interval.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The interval property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurringInterval?
      interval;

  ///  The interval_count property
  int? intervalCount;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurringInterval>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurringInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurringInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeAdditionalData(additionalData);
  }
}
