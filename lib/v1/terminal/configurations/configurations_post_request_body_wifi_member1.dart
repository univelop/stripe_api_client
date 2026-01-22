// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_wifi_member1_enterprise_eap_peap.dart';
import './configurations_post_request_body_wifi_member1_enterprise_eap_tls.dart';
import './configurations_post_request_body_wifi_member1_personal_psk.dart';
import './configurations_post_request_body_wifi_member1_type.dart';

/// auto generated
class ConfigurationsPostRequestBodyWifiMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enterprise_eap_peap property
  ConfigurationsPostRequestBodyWifiMember1EnterpriseEapPeap? enterpriseEapPeap;

  ///  The enterprise_eap_tls property
  ConfigurationsPostRequestBodyWifiMember1EnterpriseEapTls? enterpriseEapTls;

  ///  The personal_psk property
  ConfigurationsPostRequestBodyWifiMember1PersonalPsk? personalPsk;

  ///  The type property
  ConfigurationsPostRequestBodyWifiMember1Type? type_;

  /// Instantiates a new [ConfigurationsPostRequestBodyWifiMember1] and sets the default values.
  ConfigurationsPostRequestBodyWifiMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyWifiMember1 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfigurationsPostRequestBodyWifiMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enterprise_eap_peap'] = (node) => enterpriseEapPeap =
        node.getObjectValue<
                ConfigurationsPostRequestBodyWifiMember1EnterpriseEapPeap>(
            ConfigurationsPostRequestBodyWifiMember1EnterpriseEapPeap
                .createFromDiscriminatorValue);
    deserializerMap['enterprise_eap_tls'] = (node) => enterpriseEapTls =
        node.getObjectValue<
                ConfigurationsPostRequestBodyWifiMember1EnterpriseEapTls>(
            ConfigurationsPostRequestBodyWifiMember1EnterpriseEapTls
                .createFromDiscriminatorValue);
    deserializerMap['personal_psk'] = (node) => personalPsk = node
        .getObjectValue<ConfigurationsPostRequestBodyWifiMember1PersonalPsk>(
            ConfigurationsPostRequestBodyWifiMember1PersonalPsk
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ConfigurationsPostRequestBodyWifiMember1Type>(
            (stringValue) => ConfigurationsPostRequestBodyWifiMember1Type.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyWifiMember1EnterpriseEapPeap>(
        'enterprise_eap_peap', enterpriseEapPeap);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyWifiMember1EnterpriseEapTls>(
        'enterprise_eap_tls', enterpriseEapTls);
    writer
        .writeObjectValue<ConfigurationsPostRequestBodyWifiMember1PersonalPsk>(
            'personal_psk', personalPsk);
    writer.writeEnumValue<ConfigurationsPostRequestBodyWifiMember1Type>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
