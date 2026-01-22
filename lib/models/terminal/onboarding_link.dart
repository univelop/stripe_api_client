// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../terminal_onboarding_link_link_options.dart';
import './onboarding_link_link_type.dart';
import './onboarding_link_object.dart';

/// auto generated
/// Returns redirect links used for onboarding onto Tap to Pay on iPhone.
class OnboardingLink implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Link type options associated with the current onboarding link object.
  TerminalOnboardingLinkLinkOptions? linkOptions;

  ///  The type of link being generated.
  OnboardingLinkLinkType? linkType;

  ///  The object property
  OnboardingLinkObject? object;

  ///  Stripe account ID to generate the link for.
  String? onBehalfOf;

  ///  The link passed back to the user for their onboarding.
  String? redirectUrl;

  /// Instantiates a new [OnboardingLink] and sets the default values.
  OnboardingLink() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OnboardingLink createFromDiscriminatorValue(ParseNode parseNode) {
    return OnboardingLink();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['link_options'] = (node) => linkOptions =
        node.getObjectValue<TerminalOnboardingLinkLinkOptions>(
            TerminalOnboardingLinkLinkOptions.createFromDiscriminatorValue);
    deserializerMap['link_type'] = (node) => linkType =
        node.getEnumValue<OnboardingLinkLinkType>((stringValue) =>
            OnboardingLinkLinkType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<OnboardingLinkObject>((stringValue) =>
            OnboardingLinkObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['redirect_url'] =
        (node) => redirectUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalOnboardingLinkLinkOptions>(
        'link_options', linkOptions);
    writer.writeEnumValue<OnboardingLinkLinkType>(
        'link_type', linkType, (e) => e?.value);
    writer.writeEnumValue<OnboardingLinkObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeStringValue('redirect_url', redirectUrl);
    writer.writeAdditionalData(additionalData);
  }
}
