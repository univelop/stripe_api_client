// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BillingMeterResourceBillingMeterEventAdjustmentCancel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the event.
  String? identifier;

  /// Instantiates a new [BillingMeterResourceBillingMeterEventAdjustmentCancel] and sets the default values.
  BillingMeterResourceBillingMeterEventAdjustmentCancel() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingMeterResourceBillingMeterEventAdjustmentCancel
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingMeterResourceBillingMeterEventAdjustmentCancel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['identifier'] =
        (node) => identifier = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('identifier', identifier);
    writer.writeAdditionalData(additionalData);
  }
}
