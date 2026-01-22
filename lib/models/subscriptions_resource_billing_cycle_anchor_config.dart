// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SubscriptionsResourceBillingCycleAnchorConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The day of the month of the billing_cycle_anchor.
  int? dayOfMonth;

  ///  The hour of the day of the billing_cycle_anchor.
  int? hour;

  ///  The minute of the hour of the billing_cycle_anchor.
  int? minute;

  ///  The month to start full cycle billing periods.
  int? month;

  ///  The second of the minute of the billing_cycle_anchor.
  int? second;

  /// Instantiates a new [SubscriptionsResourceBillingCycleAnchorConfig] and sets the default values.
  SubscriptionsResourceBillingCycleAnchorConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsResourceBillingCycleAnchorConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsResourceBillingCycleAnchorConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['day_of_month'] = (node) => dayOfMonth = node.getIntValue();
    deserializerMap['hour'] = (node) => hour = node.getIntValue();
    deserializerMap['minute'] = (node) => minute = node.getIntValue();
    deserializerMap['month'] = (node) => month = node.getIntValue();
    deserializerMap['second'] = (node) => second = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('day_of_month', dayOfMonth);
    writer.writeIntValue('hour', hour);
    writer.writeIntValue('minute', minute);
    writer.writeIntValue('month', month);
    writer.writeIntValue('second', second);
    writer.writeAdditionalData(additionalData);
  }
}
