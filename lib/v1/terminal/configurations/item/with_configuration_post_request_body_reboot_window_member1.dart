// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithConfigurationPostRequestBodyRebootWindowMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end_hour property
  int? endHour;

  ///  The start_hour property
  int? startHour;

  /// Instantiates a new [WithConfigurationPostRequestBodyRebootWindowMember1] and sets the default values.
  WithConfigurationPostRequestBodyRebootWindowMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyRebootWindowMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyRebootWindowMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end_hour'] = (node) => endHour = node.getIntValue();
    deserializerMap['start_hour'] = (node) => startHour = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('end_hour', endHour);
    writer.writeIntValue('start_hour', startHour);
    writer.writeAdditionalData(additionalData);
  }
}
