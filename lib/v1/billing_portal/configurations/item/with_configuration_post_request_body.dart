// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_business_profile.dart';
import './with_configuration_post_request_body_default_return_url.dart';
import './with_configuration_post_request_body_features.dart';
import './with_configuration_post_request_body_login_page.dart';
import './with_configuration_post_request_body_name.dart';

/// auto generated
class WithConfigurationPostRequestBody implements Parsable {
  ///  Whether the configuration is active and can be used to create portal sessions.
  bool? active;

  ///  The business information shown to customers in the portal.
  WithConfigurationPostRequestBodyBusinessProfile? businessProfile;

  ///  The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
  WithConfigurationPostRequestBodyDefaultReturnUrl? defaultReturnUrl;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information about the features available in the portal.
  WithConfigurationPostRequestBodyFeatures? features;

  ///  The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
  WithConfigurationPostRequestBodyLoginPage? loginPage;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The name of the configuration.
  WithConfigurationPostRequestBodyName? name;

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
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['business_profile'] = (node) => businessProfile =
        node.getObjectValue<WithConfigurationPostRequestBodyBusinessProfile>(
            WithConfigurationPostRequestBodyBusinessProfile
                .createFromDiscriminatorValue);
    deserializerMap['default_return_url'] = (node) => defaultReturnUrl =
        node.getObjectValue<WithConfigurationPostRequestBodyDefaultReturnUrl>(
            WithConfigurationPostRequestBodyDefaultReturnUrl
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            WithConfigurationPostRequestBodyFeatures>(
        WithConfigurationPostRequestBodyFeatures.createFromDiscriminatorValue);
    deserializerMap['login_page'] = (node) => loginPage = node.getObjectValue<
            WithConfigurationPostRequestBodyLoginPage>(
        WithConfigurationPostRequestBodyLoginPage.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['name'] = (node) => name =
        node.getObjectValue<WithConfigurationPostRequestBodyName>(
            WithConfigurationPostRequestBodyName.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeObjectValue<WithConfigurationPostRequestBodyBusinessProfile>(
        'business_profile', businessProfile);
    writer.writeObjectValue<WithConfigurationPostRequestBodyDefaultReturnUrl>(
        'default_return_url', defaultReturnUrl);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithConfigurationPostRequestBodyFeatures>(
        'features', features);
    writer.writeObjectValue<WithConfigurationPostRequestBodyLoginPage>(
        'login_page', loginPage);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithConfigurationPostRequestBodyName>('name', name);
  }
}
