// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_business_profile_headline.dart';
import './with_configuration_post_request_body_business_profile_privacy_policy_url.dart';
import './with_configuration_post_request_body_business_profile_terms_of_service_url.dart';

/// auto generated
/// The business information shown to customers in the portal.
class WithConfigurationPostRequestBodyBusinessProfile
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The headline property
  WithConfigurationPostRequestBodyBusinessProfileHeadline? headline;

  ///  The privacy_policy_url property
  WithConfigurationPostRequestBodyBusinessProfilePrivacyPolicyUrl?
      privacyPolicyUrl;

  ///  The terms_of_service_url property
  WithConfigurationPostRequestBodyBusinessProfileTermsOfServiceUrl?
      termsOfServiceUrl;

  /// Instantiates a new [WithConfigurationPostRequestBodyBusinessProfile] and sets the default values.
  WithConfigurationPostRequestBodyBusinessProfile() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyBusinessProfile
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyBusinessProfile();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['headline'] = (node) => headline = node.getObjectValue<
            WithConfigurationPostRequestBodyBusinessProfileHeadline>(
        WithConfigurationPostRequestBodyBusinessProfileHeadline
            .createFromDiscriminatorValue);
    deserializerMap['privacy_policy_url'] = (node) => privacyPolicyUrl =
        node.getObjectValue<
                WithConfigurationPostRequestBodyBusinessProfilePrivacyPolicyUrl>(
            WithConfigurationPostRequestBodyBusinessProfilePrivacyPolicyUrl
                .createFromDiscriminatorValue);
    deserializerMap['terms_of_service_url'] = (node) => termsOfServiceUrl =
        node.getObjectValue<
                WithConfigurationPostRequestBodyBusinessProfileTermsOfServiceUrl>(
            WithConfigurationPostRequestBodyBusinessProfileTermsOfServiceUrl
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBusinessProfileHeadline>(
        'headline', headline);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBusinessProfilePrivacyPolicyUrl>(
        'privacy_policy_url', privacyPolicyUrl);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBusinessProfileTermsOfServiceUrl>(
        'terms_of_service_url', termsOfServiceUrl);
    writer.writeAdditionalData(additionalData);
  }
}
