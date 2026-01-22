// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './onboarding_links_post_request_body_link_options_apple_terms_and_conditions.dart';

/// auto generated
/// Specific fields needed to generate the desired link type.
class OnboardingLinksPostRequestBodyLinkOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The apple_terms_and_conditions property
  OnboardingLinksPostRequestBodyLinkOptionsAppleTermsAndConditions?
      appleTermsAndConditions;

  /// Instantiates a new [OnboardingLinksPostRequestBodyLinkOptions] and sets the default values.
  OnboardingLinksPostRequestBodyLinkOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OnboardingLinksPostRequestBodyLinkOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OnboardingLinksPostRequestBodyLinkOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['apple_terms_and_conditions'] = (node) =>
        appleTermsAndConditions = node.getObjectValue<
                OnboardingLinksPostRequestBodyLinkOptionsAppleTermsAndConditions>(
            OnboardingLinksPostRequestBodyLinkOptionsAppleTermsAndConditions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            OnboardingLinksPostRequestBodyLinkOptionsAppleTermsAndConditions>(
        'apple_terms_and_conditions', appleTermsAndConditions);
    writer.writeAdditionalData(additionalData);
  }
}
