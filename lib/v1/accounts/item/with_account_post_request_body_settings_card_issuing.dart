// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_card_issuing_tos_acceptance.dart';

/// auto generated
class WithAccountPostRequestBodySettingsCardIssuing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tos_acceptance property
  WithAccountPostRequestBodySettingsCardIssuingTosAcceptance? tosAcceptance;

  /// Instantiates a new [WithAccountPostRequestBodySettingsCardIssuing] and sets the default values.
  WithAccountPostRequestBodySettingsCardIssuing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsCardIssuing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsCardIssuing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<
                WithAccountPostRequestBodySettingsCardIssuingTosAcceptance>(
            WithAccountPostRequestBodySettingsCardIssuingTosAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodySettingsCardIssuingTosAcceptance>(
        'tos_acceptance', tosAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
