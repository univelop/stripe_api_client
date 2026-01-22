// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_wifi_member1_enterprise_eap_peap.dart';
import './with_configuration_post_request_body_wifi_member1_enterprise_eap_tls.dart';
import './with_configuration_post_request_body_wifi_member1_personal_psk.dart';
import './with_configuration_post_request_body_wifi_member1_type.dart';

/// auto generated
class WithConfigurationPostRequestBodyWifiMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enterprise_eap_peap property
  WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap?
      enterpriseEapPeap;

  ///  The enterprise_eap_tls property
  WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls? enterpriseEapTls;

  ///  The personal_psk property
  WithConfigurationPostRequestBodyWifiMember1PersonalPsk? personalPsk;

  ///  The type property
  WithConfigurationPostRequestBodyWifiMember1Type? type_;

  /// Instantiates a new [WithConfigurationPostRequestBodyWifiMember1] and sets the default values.
  WithConfigurationPostRequestBodyWifiMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyWifiMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyWifiMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enterprise_eap_peap'] = (node) => enterpriseEapPeap =
        node.getObjectValue<
                WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap>(
            WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap
                .createFromDiscriminatorValue);
    deserializerMap['enterprise_eap_tls'] = (node) => enterpriseEapTls =
        node.getObjectValue<
                WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls>(
            WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls
                .createFromDiscriminatorValue);
    deserializerMap['personal_psk'] = (node) => personalPsk = node
        .getObjectValue<WithConfigurationPostRequestBodyWifiMember1PersonalPsk>(
            WithConfigurationPostRequestBodyWifiMember1PersonalPsk
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<WithConfigurationPostRequestBodyWifiMember1Type>(
            (stringValue) => WithConfigurationPostRequestBodyWifiMember1Type
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyWifiMember1EnterpriseEapPeap>(
        'enterprise_eap_peap', enterpriseEapPeap);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyWifiMember1EnterpriseEapTls>(
        'enterprise_eap_tls', enterpriseEapTls);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyWifiMember1PersonalPsk>(
        'personal_psk', personalPsk);
    writer.writeEnumValue<WithConfigurationPostRequestBodyWifiMember1Type>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
