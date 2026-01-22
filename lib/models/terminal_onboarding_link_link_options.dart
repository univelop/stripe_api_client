// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_onboarding_link_apple_terms_and_conditions.dart';

/// auto generated
/// Link type options associated with the current onboarding link object.
class TerminalOnboardingLinkLinkOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The options associated with the Apple Terms and Conditions link type.
  TerminalOnboardingLinkAppleTermsAndConditions? appleTermsAndConditions;

  /// Instantiates a new [TerminalOnboardingLinkLinkOptions] and sets the default values.
  TerminalOnboardingLinkLinkOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalOnboardingLinkLinkOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalOnboardingLinkLinkOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['apple_terms_and_conditions'] = (node) =>
        appleTermsAndConditions =
            node.getObjectValue<TerminalOnboardingLinkAppleTermsAndConditions>(
                TerminalOnboardingLinkAppleTermsAndConditions
                    .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalOnboardingLinkAppleTermsAndConditions>(
        'apple_terms_and_conditions', appleTermsAndConditions);
    writer.writeAdditionalData(additionalData);
  }
}
