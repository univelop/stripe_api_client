// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_configuration_configuration_resource_enterprise_peap_wifi.dart';
import './terminal_configuration_configuration_resource_enterprise_tls_wifi.dart';
import './terminal_configuration_configuration_resource_personal_psk_wifi.dart';
import './terminal_configuration_configuration_resource_wifi_config_type.dart';

/// auto generated
class TerminalConfigurationConfigurationResourceWifiConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enterprise_eap_peap property
  TerminalConfigurationConfigurationResourceEnterprisePeapWifi?
      enterpriseEapPeap;

  ///  The enterprise_eap_tls property
  TerminalConfigurationConfigurationResourceEnterpriseTlsWifi? enterpriseEapTls;

  ///  The personal_psk property
  TerminalConfigurationConfigurationResourcePersonalPskWifi? personalPsk;

  ///  Security type of the WiFi network. The hash with the corresponding name contains the credentials for this security type.
  TerminalConfigurationConfigurationResourceWifiConfigType? type_;

  /// Instantiates a new [TerminalConfigurationConfigurationResourceWifiConfig] and sets the default values.
  TerminalConfigurationConfigurationResourceWifiConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalConfigurationConfigurationResourceWifiConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalConfigurationConfigurationResourceWifiConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enterprise_eap_peap'] = (node) => enterpriseEapPeap =
        node.getObjectValue<
                TerminalConfigurationConfigurationResourceEnterprisePeapWifi>(
            TerminalConfigurationConfigurationResourceEnterprisePeapWifi
                .createFromDiscriminatorValue);
    deserializerMap['enterprise_eap_tls'] = (node) => enterpriseEapTls =
        node.getObjectValue<
                TerminalConfigurationConfigurationResourceEnterpriseTlsWifi>(
            TerminalConfigurationConfigurationResourceEnterpriseTlsWifi
                .createFromDiscriminatorValue);
    deserializerMap['personal_psk'] = (node) => personalPsk =
        node.getObjectValue<
                TerminalConfigurationConfigurationResourcePersonalPskWifi>(
            TerminalConfigurationConfigurationResourcePersonalPskWifi
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TerminalConfigurationConfigurationResourceWifiConfigType>(
            (stringValue) =>
                TerminalConfigurationConfigurationResourceWifiConfigType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceEnterprisePeapWifi>(
        'enterprise_eap_peap', enterpriseEapPeap);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceEnterpriseTlsWifi>(
        'enterprise_eap_tls', enterpriseEapTls);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourcePersonalPskWifi>(
        'personal_psk', personalPsk);
    writer.writeEnumValue<
            TerminalConfigurationConfigurationResourceWifiConfigType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
