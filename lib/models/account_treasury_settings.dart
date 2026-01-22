// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_terms_of_service.dart';

/// auto generated
class AccountTreasurySettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tos_acceptance property
  AccountTermsOfService? tosAcceptance;

  /// Instantiates a new [AccountTreasurySettings] and sets the default values.
  AccountTreasurySettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountTreasurySettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountTreasurySettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<AccountTermsOfService>(
            AccountTermsOfService.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountTermsOfService>(
        'tos_acceptance', tosAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
