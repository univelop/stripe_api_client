// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BillingMeterResourceBillingMeterStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time the meter was deactivated, if any. Measured in seconds since Unix epoch.
  int? deactivatedAt;

  /// Instantiates a new [BillingMeterResourceBillingMeterStatusTransitions] and sets the default values.
  BillingMeterResourceBillingMeterStatusTransitions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingMeterResourceBillingMeterStatusTransitions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingMeterResourceBillingMeterStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['deactivated_at'] =
        (node) => deactivatedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('deactivated_at', deactivatedAt);
    writer.writeAdditionalData(additionalData);
  }
}
