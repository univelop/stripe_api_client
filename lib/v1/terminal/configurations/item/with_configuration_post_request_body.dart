// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_bbpos_wisepad3.dart';
import './with_configuration_post_request_body_bbpos_wisepos_e.dart';
import './with_configuration_post_request_body_offline.dart';
import './with_configuration_post_request_body_reboot_window.dart';
import './with_configuration_post_request_body_stripe_s700.dart';
import './with_configuration_post_request_body_tipping.dart';
import './with_configuration_post_request_body_verifone_p400.dart';
import './with_configuration_post_request_body_wifi.dart';

/// auto generated
class WithConfigurationPostRequestBody implements Parsable {
  ///  An object containing device type specific settings for BBPOS WisePad 3 readers.
  WithConfigurationPostRequestBodyBbposWisepad3? bbposWisepad3;

  ///  An object containing device type specific settings for BBPOS WisePOS E readers.
  WithConfigurationPostRequestBodyBbposWiseposE? bbposWiseposE;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Name of the configuration
  String? name;

  ///  Configurations for collecting transactions offline.
  WithConfigurationPostRequestBodyOffline? offline;

  ///  Reboot time settings for readers. that support customized reboot time configuration.
  WithConfigurationPostRequestBodyRebootWindow? rebootWindow;

  ///  An object containing device type specific settings for Stripe S700 readers.
  WithConfigurationPostRequestBodyStripeS700? stripeS700;

  ///  Tipping configurations for readers. supporting on-reader tips
  WithConfigurationPostRequestBodyTipping? tipping;

  ///  An object containing device type specific settings for Verifone P400 readers.
  WithConfigurationPostRequestBodyVerifoneP400? verifoneP400;

  ///  Configurations for connecting to a WiFi network.
  WithConfigurationPostRequestBodyWifi? wifi;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bbpos_wisepad3'] = (node) => bbposWisepad3 =
        node.getObjectValue<WithConfigurationPostRequestBodyBbposWisepad3>(
            WithConfigurationPostRequestBodyBbposWisepad3
                .createFromDiscriminatorValue);
    deserializerMap['bbpos_wisepos_e'] = (node) => bbposWiseposE =
        node.getObjectValue<WithConfigurationPostRequestBodyBbposWiseposE>(
            WithConfigurationPostRequestBodyBbposWiseposE
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['offline'] = (node) => offline = node.getObjectValue<
            WithConfigurationPostRequestBodyOffline>(
        WithConfigurationPostRequestBodyOffline.createFromDiscriminatorValue);
    deserializerMap['reboot_window'] = (node) => rebootWindow =
        node.getObjectValue<WithConfigurationPostRequestBodyRebootWindow>(
            WithConfigurationPostRequestBodyRebootWindow
                .createFromDiscriminatorValue);
    deserializerMap['stripe_s700'] = (node) => stripeS700 =
        node.getObjectValue<WithConfigurationPostRequestBodyStripeS700>(
            WithConfigurationPostRequestBodyStripeS700
                .createFromDiscriminatorValue);
    deserializerMap['tipping'] = (node) => tipping = node.getObjectValue<
            WithConfigurationPostRequestBodyTipping>(
        WithConfigurationPostRequestBodyTipping.createFromDiscriminatorValue);
    deserializerMap['verifone_p400'] = (node) => verifoneP400 =
        node.getObjectValue<WithConfigurationPostRequestBodyVerifoneP400>(
            WithConfigurationPostRequestBodyVerifoneP400
                .createFromDiscriminatorValue);
    deserializerMap['wifi'] = (node) => wifi =
        node.getObjectValue<WithConfigurationPostRequestBodyWifi>(
            WithConfigurationPostRequestBodyWifi.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithConfigurationPostRequestBodyBbposWisepad3>(
        'bbpos_wisepad3', bbposWisepad3);
    writer.writeObjectValue<WithConfigurationPostRequestBodyBbposWiseposE>(
        'bbpos_wisepos_e', bbposWiseposE);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<WithConfigurationPostRequestBodyOffline>(
        'offline', offline);
    writer.writeObjectValue<WithConfigurationPostRequestBodyRebootWindow>(
        'reboot_window', rebootWindow);
    writer.writeObjectValue<WithConfigurationPostRequestBodyStripeS700>(
        'stripe_s700', stripeS700);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTipping>(
        'tipping', tipping);
    writer.writeObjectValue<WithConfigurationPostRequestBodyVerifoneP400>(
        'verifone_p400', verifoneP400);
    writer.writeObjectValue<WithConfigurationPostRequestBodyWifi>('wifi', wifi);
  }
}
