// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_settings_card_issuing_tos_acceptance.dart';

/// auto generated
class AccountsPostRequestBodySettingsCardIssuing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tos_acceptance property
  AccountsPostRequestBodySettingsCardIssuingTosAcceptance? tosAcceptance;

  /// Instantiates a new [AccountsPostRequestBodySettingsCardIssuing] and sets the default values.
  AccountsPostRequestBodySettingsCardIssuing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodySettingsCardIssuing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountsPostRequestBodySettingsCardIssuing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<
                AccountsPostRequestBodySettingsCardIssuingTosAcceptance>(
            AccountsPostRequestBodySettingsCardIssuingTosAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            AccountsPostRequestBodySettingsCardIssuingTosAcceptance>(
        'tos_acceptance', tosAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
