// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './card_issuing_account_terms_of_service.dart';

/// auto generated
class AccountCardIssuingSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tos_acceptance property
  CardIssuingAccountTermsOfService? tosAcceptance;

  /// Instantiates a new [AccountCardIssuingSettings] and sets the default values.
  AccountCardIssuingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountCardIssuingSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountCardIssuingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<CardIssuingAccountTermsOfService>(
            CardIssuingAccountTermsOfService.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CardIssuingAccountTermsOfService>(
        'tos_acceptance', tosAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
