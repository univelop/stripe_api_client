// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_business_profile.dart';
import './configurations_post_request_body_default_return_url.dart';
import './configurations_post_request_body_features.dart';
import './configurations_post_request_body_login_page.dart';
import './configurations_post_request_body_metadata.dart';
import './configurations_post_request_body_name.dart';

/// auto generated
class ConfigurationsPostRequestBody implements Parsable {
  ///  The business information shown to customers in the portal.
  ConfigurationsPostRequestBodyBusinessProfile? businessProfile;

  ///  The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
  ConfigurationsPostRequestBodyDefaultReturnUrl? defaultReturnUrl;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information about the features available in the portal.
  ConfigurationsPostRequestBodyFeatures? features;

  ///  The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
  ConfigurationsPostRequestBodyLoginPage? loginPage;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  ConfigurationsPostRequestBodyMetadata? metadata;

  ///  The name of the configuration.
  ConfigurationsPostRequestBodyName? name;

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
    deserializerMap['business_profile'] = (node) => businessProfile =
        node.getObjectValue<ConfigurationsPostRequestBodyBusinessProfile>(
            ConfigurationsPostRequestBodyBusinessProfile
                .createFromDiscriminatorValue);
    deserializerMap['default_return_url'] = (node) => defaultReturnUrl =
        node.getObjectValue<ConfigurationsPostRequestBodyDefaultReturnUrl>(
            ConfigurationsPostRequestBodyDefaultReturnUrl
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['features'] = (node) => features =
        node.getObjectValue<ConfigurationsPostRequestBodyFeatures>(
            ConfigurationsPostRequestBodyFeatures.createFromDiscriminatorValue);
    deserializerMap['login_page'] = (node) => loginPage = node.getObjectValue<
            ConfigurationsPostRequestBodyLoginPage>(
        ConfigurationsPostRequestBodyLoginPage.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ConfigurationsPostRequestBodyMetadata>(
            ConfigurationsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name =
        node.getObjectValue<ConfigurationsPostRequestBodyName>(
            ConfigurationsPostRequestBodyName.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfigurationsPostRequestBodyBusinessProfile>(
        'business_profile', businessProfile);
    writer.writeObjectValue<ConfigurationsPostRequestBodyDefaultReturnUrl>(
        'default_return_url', defaultReturnUrl);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ConfigurationsPostRequestBodyFeatures>(
        'features', features);
    writer.writeObjectValue<ConfigurationsPostRequestBodyLoginPage>(
        'login_page', loginPage);
    writer.writeObjectValue<ConfigurationsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<ConfigurationsPostRequestBodyName>('name', name);
  }
}
