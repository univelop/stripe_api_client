// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SubscriptionScheduleCurrentPhase
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end of this phase of the subscription schedule.
  int? endDate;

  ///  The start of this phase of the subscription schedule.
  int? startDate;

  /// Instantiates a new [SubscriptionScheduleCurrentPhase] and sets the default values.
  SubscriptionScheduleCurrentPhase() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionScheduleCurrentPhase createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionScheduleCurrentPhase();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end_date'] = (node) => endDate = node.getIntValue();
    deserializerMap['start_date'] = (node) => startDate = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('end_date', endDate);
    writer.writeIntValue('start_date', startDate);
    writer.writeAdditionalData(additionalData);
  }
}
