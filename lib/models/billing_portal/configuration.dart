// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../portal_business_profile.dart';
import '../portal_features.dart';
import '../portal_login_page.dart';
import './configuration_application.dart';
import './configuration_metadata.dart';
import './configuration_object.dart';

/// auto generated
/// A portal configuration describes the functionality and behavior you embed in a portal session. Related guide: [Configure the customer portal](/customer-management/configure-portal).
class Configuration implements AdditionalDataHolder, Parsable {
  ///  Whether the configuration is active and can be used to create portal sessions.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the Connect Application that created the configuration.
  ConfigurationApplication? application;

  ///  The business_profile property
  PortalBusinessProfile? businessProfile;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
  String? defaultReturnUrl;

  ///  The features property
  PortalFeatures? features;

  ///  Unique identifier for the object.
  String? id;

  ///  Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
  bool? isDefault;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The login_page property
  PortalLoginPage? loginPage;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ConfigurationMetadata? metadata;

  ///  The name of the configuration.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  ConfigurationObject? object;

  ///  Time at which the object was last updated. Measured in seconds since the Unix epoch.
  int? updated;

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
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<ConfigurationApplication>(
            ConfigurationApplication.createFromDiscriminatorValue);
    deserializerMap['business_profile'] = (node) => businessProfile =
        node.getObjectValue<PortalBusinessProfile>(
            PortalBusinessProfile.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['default_return_url'] =
        (node) => defaultReturnUrl = node.getStringValue();
    deserializerMap['features'] = (node) => features =
        node.getObjectValue<PortalFeatures>(
            PortalFeatures.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['is_default'] = (node) => isDefault = node.getBoolValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['login_page'] = (node) => loginPage =
        node.getObjectValue<PortalLoginPage>(
            PortalLoginPage.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ConfigurationMetadata>(
            ConfigurationMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ConfigurationObject>((stringValue) =>
            ConfigurationObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['updated'] = (node) => updated = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeObjectValue<ConfigurationApplication>(
        'application', application);
    writer.writeObjectValue<PortalBusinessProfile>(
        'business_profile', businessProfile);
    writer.writeIntValue('created', created);
    writer.writeStringValue('default_return_url', defaultReturnUrl);
    writer.writeObjectValue<PortalFeatures>('features', features);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('is_default', value: isDefault);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PortalLoginPage>('login_page', loginPage);
    writer.writeObjectValue<ConfigurationMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<ConfigurationObject>(
        'object', object, (e) => e?.value);
    writer.writeIntValue('updated', updated);
    writer.writeAdditionalData(additionalData);
  }
}
