// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_bbpos_wisepad3.dart';
import './configurations_post_request_body_bbpos_wisepos_e.dart';
import './configurations_post_request_body_offline.dart';
import './configurations_post_request_body_reboot_window.dart';
import './configurations_post_request_body_stripe_s700.dart';
import './configurations_post_request_body_tipping.dart';
import './configurations_post_request_body_verifone_p400.dart';
import './configurations_post_request_body_wifi.dart';

/// auto generated
class ConfigurationsPostRequestBody implements Parsable {
  ///  An object containing device type specific settings for BBPOS WisePad 3 readers.
  ConfigurationsPostRequestBodyBbposWisepad3? bbposWisepad3;

  ///  An object containing device type specific settings for BBPOS WisePOS E readers.
  ConfigurationsPostRequestBodyBbposWiseposE? bbposWiseposE;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Name of the configuration
  String? name;

  ///  Configurations for collecting transactions offline.
  ConfigurationsPostRequestBodyOffline? offline;

  ///  Reboot time settings for readers. that support customized reboot time configuration.
  ConfigurationsPostRequestBodyRebootWindow? rebootWindow;

  ///  An object containing device type specific settings for Stripe S700 readers.
  ConfigurationsPostRequestBodyStripeS700? stripeS700;

  ///  Tipping configurations for readers. supporting on-reader tips
  ConfigurationsPostRequestBodyTipping? tipping;

  ///  An object containing device type specific settings for Verifone P400 readers.
  ConfigurationsPostRequestBodyVerifoneP400? verifoneP400;

  ///  Configurations for connecting to a WiFi network.
  ConfigurationsPostRequestBodyWifi? wifi;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfigurationsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bbpos_wisepad3'] = (node) => bbposWisepad3 =
        node.getObjectValue<ConfigurationsPostRequestBodyBbposWisepad3>(
            ConfigurationsPostRequestBodyBbposWisepad3
                .createFromDiscriminatorValue);
    deserializerMap['bbpos_wisepos_e'] = (node) => bbposWiseposE =
        node.getObjectValue<ConfigurationsPostRequestBodyBbposWiseposE>(
            ConfigurationsPostRequestBodyBbposWiseposE
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['offline'] = (node) => offline =
        node.getObjectValue<ConfigurationsPostRequestBodyOffline>(
            ConfigurationsPostRequestBodyOffline.createFromDiscriminatorValue);
    deserializerMap['reboot_window'] = (node) => rebootWindow =
        node.getObjectValue<ConfigurationsPostRequestBodyRebootWindow>(
            ConfigurationsPostRequestBodyRebootWindow
                .createFromDiscriminatorValue);
    deserializerMap['stripe_s700'] = (node) => stripeS700 = node.getObjectValue<
            ConfigurationsPostRequestBodyStripeS700>(
        ConfigurationsPostRequestBodyStripeS700.createFromDiscriminatorValue);
    deserializerMap['tipping'] = (node) => tipping =
        node.getObjectValue<ConfigurationsPostRequestBodyTipping>(
            ConfigurationsPostRequestBodyTipping.createFromDiscriminatorValue);
    deserializerMap['verifone_p400'] = (node) => verifoneP400 =
        node.getObjectValue<ConfigurationsPostRequestBodyVerifoneP400>(
            ConfigurationsPostRequestBodyVerifoneP400
                .createFromDiscriminatorValue);
    deserializerMap['wifi'] = (node) => wifi =
        node.getObjectValue<ConfigurationsPostRequestBodyWifi>(
            ConfigurationsPostRequestBodyWifi.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfigurationsPostRequestBodyBbposWisepad3>(
        'bbpos_wisepad3', bbposWisepad3);
    writer.writeObjectValue<ConfigurationsPostRequestBodyBbposWiseposE>(
        'bbpos_wisepos_e', bbposWiseposE);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<ConfigurationsPostRequestBodyOffline>(
        'offline', offline);
    writer.writeObjectValue<ConfigurationsPostRequestBodyRebootWindow>(
        'reboot_window', rebootWindow);
    writer.writeObjectValue<ConfigurationsPostRequestBodyStripeS700>(
        'stripe_s700', stripeS700);
    writer.writeObjectValue<ConfigurationsPostRequestBodyTipping>(
        'tipping', tipping);
    writer.writeObjectValue<ConfigurationsPostRequestBodyVerifoneP400>(
        'verifone_p400', verifoneP400);
    writer.writeObjectValue<ConfigurationsPostRequestBodyWifi>('wifi', wifi);
  }
}
