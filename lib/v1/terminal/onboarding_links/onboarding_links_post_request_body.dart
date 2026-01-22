// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './onboarding_links_post_request_body_link_options.dart';
import './onboarding_links_post_request_body_link_type.dart';

/// auto generated
class OnboardingLinksPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Specific fields needed to generate the desired link type.
  OnboardingLinksPostRequestBodyLinkOptions? linkOptions;

  ///  The type of link being generated.
  OnboardingLinksPostRequestBodyLinkType? linkType;

  ///  Stripe account ID to generate the link for.
  String? onBehalfOf;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OnboardingLinksPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OnboardingLinksPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['link_options'] = (node) => linkOptions =
        node.getObjectValue<OnboardingLinksPostRequestBodyLinkOptions>(
            OnboardingLinksPostRequestBodyLinkOptions
                .createFromDiscriminatorValue);
    deserializerMap['link_type'] = (node) => linkType =
        node.getEnumValue<OnboardingLinksPostRequestBodyLinkType>(
            (stringValue) => OnboardingLinksPostRequestBodyLinkType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<OnboardingLinksPostRequestBodyLinkOptions>(
        'link_options', linkOptions);
    writer.writeEnumValue<OnboardingLinksPostRequestBodyLinkType>(
        'link_type', linkType, (e) => e?.value);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
  }
}
