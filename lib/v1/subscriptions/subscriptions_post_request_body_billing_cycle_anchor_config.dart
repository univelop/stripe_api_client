// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Mutually exclusive with billing_cycle_anchor and only valid with monthly and yearly price intervals. When provided, the billing_cycle_anchor is set to the next occurrence of the day_of_month at the hour, minute, and second UTC.
class SubscriptionsPostRequestBodyBillingCycleAnchorConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The day_of_month property
  int? dayOfMonth;

  ///  The hour property
  int? hour;

  ///  The minute property
  int? minute;

  ///  The month property
  int? month;

  ///  The second property
  int? second;

  /// Instantiates a new [SubscriptionsPostRequestBodyBillingCycleAnchorConfig] and sets the default values.
  SubscriptionsPostRequestBodyBillingCycleAnchorConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyBillingCycleAnchorConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyBillingCycleAnchorConfig();
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
