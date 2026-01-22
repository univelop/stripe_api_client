// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_resource_schedule_update_at_period_end_condition.dart';

/// auto generated
class PortalResourceScheduleUpdateAtPeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  List of conditions. When any condition is true, an update will be scheduled at the end of the current period.
  Iterable<PortalResourceScheduleUpdateAtPeriodEndCondition>? conditions;

  /// Instantiates a new [PortalResourceScheduleUpdateAtPeriodEnd] and sets the default values.
  PortalResourceScheduleUpdateAtPeriodEnd() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalResourceScheduleUpdateAtPeriodEnd createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalResourceScheduleUpdateAtPeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['conditions'] = (node) => conditions =
        node.getCollectionOfObjectValues<
                PortalResourceScheduleUpdateAtPeriodEndCondition>(
            PortalResourceScheduleUpdateAtPeriodEndCondition
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            PortalResourceScheduleUpdateAtPeriodEndCondition>(
        'conditions', conditions);
    writer.writeAdditionalData(additionalData);
  }
}
