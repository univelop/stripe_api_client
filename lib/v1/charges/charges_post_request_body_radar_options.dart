// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
class ChargesPostRequestBodyRadarOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The session property
  String? session;

  /// Instantiates a new [ChargesPostRequestBodyRadarOptions] and sets the default values.
  ChargesPostRequestBodyRadarOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ChargesPostRequestBodyRadarOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ChargesPostRequestBodyRadarOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['session'] = (node) => session = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('session', session);
    writer.writeAdditionalData(additionalData);
  }
}
