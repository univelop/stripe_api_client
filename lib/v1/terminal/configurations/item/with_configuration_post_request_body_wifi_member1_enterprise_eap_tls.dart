// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ca_certificate_file property
  String? caCertificateFile;

  ///  The client_certificate_file property
  String? clientCertificateFile;

  ///  The private_key_file property
  String? privateKeyFile;

  ///  The private_key_file_password property
  String? privateKeyFilePassword;

  ///  The ssid property
  String? ssid;

  /// Instantiates a new [WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls] and sets the default values.
  WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ca_certificate_file'] =
        (node) => caCertificateFile = node.getStringValue();
    deserializerMap['client_certificate_file'] =
        (node) => clientCertificateFile = node.getStringValue();
    deserializerMap['private_key_file'] =
        (node) => privateKeyFile = node.getStringValue();
    deserializerMap['private_key_file_password'] =
        (node) => privateKeyFilePassword = node.getStringValue();
    deserializerMap['ssid'] = (node) => ssid = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('ca_certificate_file', caCertificateFile);
    writer.writeStringValue('client_certificate_file', clientCertificateFile);
    writer.writeStringValue('private_key_file', privateKeyFile);
    writer.writeStringValue(
        'private_key_file_password', privateKeyFilePassword);
    writer.writeStringValue('ssid', ssid);
    writer.writeAdditionalData(additionalData);
  }
}
