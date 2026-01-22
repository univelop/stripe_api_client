// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PortalBusinessProfile implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The messaging shown to customers in the portal.
  String? headline;

  ///  A link to the business’s publicly available privacy policy.
  String? privacyPolicyUrl;

  ///  A link to the business’s publicly available terms of service.
  String? termsOfServiceUrl;

  /// Instantiates a new [PortalBusinessProfile] and sets the default values.
  PortalBusinessProfile() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalBusinessProfile createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalBusinessProfile();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['headline'] = (node) => headline = node.getStringValue();
    deserializerMap['privacy_policy_url'] =
        (node) => privacyPolicyUrl = node.getStringValue();
    deserializerMap['terms_of_service_url'] =
        (node) => termsOfServiceUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('headline', headline);
    writer.writeStringValue('privacy_policy_url', privacyPolicyUrl);
    writer.writeStringValue('terms_of_service_url', termsOfServiceUrl);
    writer.writeAdditionalData(additionalData);
  }
}
