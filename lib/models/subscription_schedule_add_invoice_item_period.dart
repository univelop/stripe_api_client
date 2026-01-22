// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_resource_invoice_item_period_resource_period_end.dart';
import './subscription_schedules_resource_invoice_item_period_resource_period_start.dart';

/// auto generated
class SubscriptionScheduleAddInvoiceItemPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd? end;

  ///  The start property
  SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart? start;

  /// Instantiates a new [SubscriptionScheduleAddInvoiceItemPeriod] and sets the default values.
  SubscriptionScheduleAddInvoiceItemPeriod() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionScheduleAddInvoiceItemPeriod createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionScheduleAddInvoiceItemPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node.getObjectValue<
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd>(
        SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd
            .createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node.getObjectValue<
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart>(
        SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd>(
        'end', end);
    writer.writeObjectValue<
            SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart>(
        'start', start);
    writer.writeAdditionalData(additionalData);
  }
}
