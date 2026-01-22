// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TerminalConfigurationConfigurationResourceEnterprisePeapWifi
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A File ID representing a PEM file containing the server certificate
  String? caCertificateFile;

  ///  Password for connecting to the WiFi network
  String? password;

  ///  Name of the WiFi network
  String? ssid;

  ///  Username for connecting to the WiFi network
  String? username;

  /// Instantiates a new [TerminalConfigurationConfigurationResourceEnterprisePeapWifi] and sets the default values.
  TerminalConfigurationConfigurationResourceEnterprisePeapWifi()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalConfigurationConfigurationResourceEnterprisePeapWifi
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalConfigurationConfigurationResourceEnterprisePeapWifi();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ca_certificate_file'] =
        (node) => caCertificateFile = node.getStringValue();
    deserializerMap['password'] = (node) => password = node.getStringValue();
    deserializerMap['ssid'] = (node) => ssid = node.getStringValue();
    deserializerMap['username'] = (node) => username = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('ca_certificate_file', caCertificateFile);
    writer.writeStringValue('password', password);
    writer.writeStringValue('ssid', ssid);
    writer.writeStringValue('username', username);
    writer.writeAdditionalData(additionalData);
  }
}
