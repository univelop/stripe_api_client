// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ca_certificate_file property
  String? caCertificateFile;

  ///  The password property
  String? password;

  ///  The ssid property
  String? ssid;

  ///  The username property
  String? username;

  /// Instantiates a new [WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap] and sets the default values.
  WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap();
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
