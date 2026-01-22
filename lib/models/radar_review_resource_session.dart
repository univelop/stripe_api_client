// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class RadarReviewResourceSession implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The browser used in this browser session (e.g., `Chrome`).
  String? browser;

  ///  Information about the device used for the browser session (e.g., `Samsung SM-G930T`).
  String? device;

  ///  The platform for the browser session (e.g., `Macintosh`).
  String? platform;

  ///  The version for the browser session (e.g., `61.0.3163.100`).
  String? version;

  /// Instantiates a new [RadarReviewResourceSession] and sets the default values.
  RadarReviewResourceSession() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RadarReviewResourceSession createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RadarReviewResourceSession();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['browser'] = (node) => browser = node.getStringValue();
    deserializerMap['device'] = (node) => device = node.getStringValue();
    deserializerMap['platform'] = (node) => platform = node.getStringValue();
    deserializerMap['version'] = (node) => version = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('browser', browser);
    writer.writeStringValue('device', device);
    writer.writeStringValue('platform', platform);
    writer.writeStringValue('version', version);
    writer.writeAdditionalData(additionalData);
  }
}
