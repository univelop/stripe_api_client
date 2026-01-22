// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_resource_schedule_update_at_period_end_condition_type.dart';

/// auto generated
class PortalResourceScheduleUpdateAtPeriodEndCondition
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type of condition.
  PortalResourceScheduleUpdateAtPeriodEndConditionType? type_;

  /// Instantiates a new [PortalResourceScheduleUpdateAtPeriodEndCondition] and sets the default values.
  PortalResourceScheduleUpdateAtPeriodEndCondition() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalResourceScheduleUpdateAtPeriodEndCondition
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PortalResourceScheduleUpdateAtPeriodEndCondition();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PortalResourceScheduleUpdateAtPeriodEndConditionType>(
            (stringValue) =>
                PortalResourceScheduleUpdateAtPeriodEndConditionType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PortalResourceScheduleUpdateAtPeriodEndConditionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
