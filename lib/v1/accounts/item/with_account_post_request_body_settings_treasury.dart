// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_treasury_tos_acceptance.dart';

/// auto generated
class WithAccountPostRequestBodySettingsTreasury
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tos_acceptance property
  WithAccountPostRequestBodySettingsTreasuryTosAcceptance? tosAcceptance;

  /// Instantiates a new [WithAccountPostRequestBodySettingsTreasury] and sets the default values.
  WithAccountPostRequestBodySettingsTreasury() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsTreasury
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsTreasury();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<
                WithAccountPostRequestBodySettingsTreasuryTosAcceptance>(
            WithAccountPostRequestBodySettingsTreasuryTosAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodySettingsTreasuryTosAcceptance>(
        'tos_acceptance', tosAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
