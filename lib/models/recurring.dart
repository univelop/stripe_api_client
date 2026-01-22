// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './recurring_interval.dart';
import './recurring_usage_type.dart';

/// auto generated
class Recurring implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
  RecurringInterval? interval;

  ///  The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
  int? intervalCount;

  ///  The meter tracking the usage of a metered price
  String? meter;

  ///  Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
  RecurringUsageType? usageType;

  /// Instantiates a new [Recurring] and sets the default values.
  Recurring() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Recurring createFromDiscriminatorValue(ParseNode parseNode) {
    return Recurring();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<RecurringInterval>((stringValue) => RecurringInterval
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    deserializerMap['meter'] = (node) => meter = node.getStringValue();
    deserializerMap['usage_type'] = (node) => usageType =
        node.getEnumValue<RecurringUsageType>((stringValue) =>
            RecurringUsageType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<RecurringInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeStringValue('meter', meter);
    writer.writeEnumValue<RecurringUsageType>(
        'usage_type', usageType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
