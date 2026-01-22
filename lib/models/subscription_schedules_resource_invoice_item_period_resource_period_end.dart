// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_resource_invoice_item_period_resource_period_end_type.dart';

/// auto generated
class SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A precise Unix timestamp for the end of the invoice item period. Must be greater than or equal to `period.start`.
  int? timestamp;

  ///  Select how to calculate the end of the invoice item period.
  SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEndType? type_;

  /// Instantiates a new [SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd] and sets the default values.
  SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEndType>(
        (stringValue) =>
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEndType
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
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEndType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
