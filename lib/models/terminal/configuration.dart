// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../terminal_configuration_configuration_resource_device_type_specific_config.dart';
import '../terminal_configuration_configuration_resource_offline_config.dart';
import '../terminal_configuration_configuration_resource_reboot_window.dart';
import '../terminal_configuration_configuration_resource_tipping.dart';
import '../terminal_configuration_configuration_resource_wifi_config.dart';
import './configuration_object.dart';

/// auto generated
/// A Configurations object represents how features should be configured for terminal readers.For information about how to use it, see the [Terminal configurations documentation](https://docs.stripe.com/terminal/fleet/configurations-overview).
class Configuration implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bbpos_wisepad3 property
  TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig?
      bbposWisepad3;

  ///  The bbpos_wisepos_e property
  TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig?
      bbposWiseposE;

  ///  Unique identifier for the object.
  String? id;

  ///  Whether this Configuration is the default for your account
  bool? isAccountDefault;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String indicating the name of the Configuration object, set by the user
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  ConfigurationObject? object;

  ///  The offline property
  TerminalConfigurationConfigurationResourceOfflineConfig? offline;

  ///  The reboot_window property
  TerminalConfigurationConfigurationResourceRebootWindow? rebootWindow;

  ///  The stripe_s700 property
  TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig?
      stripeS700;

  ///  The tipping property
  TerminalConfigurationConfigurationResourceTipping? tipping;

  ///  The verifone_p400 property
  TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig?
      verifoneP400;

  ///  The wifi property
  TerminalConfigurationConfigurationResourceWifiConfig? wifi;

  /// Instantiates a new [Configuration] and sets the default values.
  Configuration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Configuration createFromDiscriminatorValue(ParseNode parseNode) {
    return Configuration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'bbpos_wisepad3'] = (node) => bbposWisepad3 = node.getObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap[
        'bbpos_wisepos_e'] = (node) => bbposWiseposE = node.getObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['is_account_default'] =
        (node) => isAccountDefault = node.getBoolValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ConfigurationObject>((stringValue) =>
            ConfigurationObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['offline'] = (node) => offline = node.getObjectValue<
            TerminalConfigurationConfigurationResourceOfflineConfig>(
        TerminalConfigurationConfigurationResourceOfflineConfig
            .createFromDiscriminatorValue);
    deserializerMap['reboot_window'] = (node) => rebootWindow = node
        .getObjectValue<TerminalConfigurationConfigurationResourceRebootWindow>(
            TerminalConfigurationConfigurationResourceRebootWindow
                .createFromDiscriminatorValue);
    deserializerMap['stripe_s700'] = (node) => stripeS700 = node.getObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['tipping'] = (node) => tipping =
        node.getObjectValue<TerminalConfigurationConfigurationResourceTipping>(
            TerminalConfigurationConfigurationResourceTipping
                .createFromDiscriminatorValue);
    deserializerMap[
        'verifone_p400'] = (node) => verifoneP400 = node.getObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
            .createFromDiscriminatorValue);
    deserializerMap['wifi'] = (node) => wifi = node
        .getObjectValue<TerminalConfigurationConfigurationResourceWifiConfig>(
            TerminalConfigurationConfigurationResourceWifiConfig
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        'bbpos_wisepad3', bbposWisepad3);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        'bbpos_wisepos_e', bbposWiseposE);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('is_account_default', value: isAccountDefault);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<ConfigurationObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceOfflineConfig>(
        'offline', offline);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceRebootWindow>(
        'reboot_window', rebootWindow);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        'stripe_s700', stripeS700);
    writer.writeObjectValue<TerminalConfigurationConfigurationResourceTipping>(
        'tipping', tipping);
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig>(
        'verifone_p400', verifoneP400);
    writer
        .writeObjectValue<TerminalConfigurationConfigurationResourceWifiConfig>(
            'wifi', wifi);
    writer.writeAdditionalData(additionalData);
  }
}
