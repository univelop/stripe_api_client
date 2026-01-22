// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Options associated with the Apple Terms and Conditions link type.
class TerminalOnboardingLinkAppleTermsAndConditions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the link should also support users relinking their Apple account.
  bool? allowRelinking;

  ///  The business name of the merchant accepting Apple's Terms and Conditions.
  String? merchantDisplayName;

  /// Instantiates a new [TerminalOnboardingLinkAppleTermsAndConditions] and sets the default values.
  TerminalOnboardingLinkAppleTermsAndConditions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalOnboardingLinkAppleTermsAndConditions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalOnboardingLinkAppleTermsAndConditions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_relinking'] =
        (node) => allowRelinking = node.getBoolValue();
    deserializerMap['merchant_display_name'] =
        (node) => merchantDisplayName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('allow_relinking', value: allowRelinking);
    writer.writeStringValue('merchant_display_name', merchantDisplayName);
    writer.writeAdditionalData(additionalData);
  }
}
