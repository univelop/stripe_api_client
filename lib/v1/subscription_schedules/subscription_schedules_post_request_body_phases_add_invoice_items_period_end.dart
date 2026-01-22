// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items_period_end_type.dart';

/// auto generated
class SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp property
  int? timestamp;

  ///  The type property
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEndType? type_;

  /// Instantiates a new [SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEnd] and sets the default values.
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEnd()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEnd
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEndType>(
        (stringValue) =>
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEndType
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
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriodEndType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
