// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './persons_post_request_body_additional_tos_acceptances_account_user_agent.dart';

/// auto generated
class PersonsPostRequestBodyAdditionalTosAcceptancesAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The date property
  int? date;

  ///  The ip property
  String? ip;

  ///  The user_agent property
  PersonsPostRequestBodyAdditionalTosAcceptancesAccountUserAgent? userAgent;

  /// Instantiates a new [PersonsPostRequestBodyAdditionalTosAcceptancesAccount] and sets the default values.
  PersonsPostRequestBodyAdditionalTosAcceptancesAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonsPostRequestBodyAdditionalTosAcceptancesAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonsPostRequestBodyAdditionalTosAcceptancesAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getObjectValue<
            PersonsPostRequestBodyAdditionalTosAcceptancesAccountUserAgent>(
        PersonsPostRequestBodyAdditionalTosAcceptancesAccountUserAgent
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('date', date);
    writer.writeStringValue('ip', ip);
    writer.writeObjectValue<
            PersonsPostRequestBodyAdditionalTosAcceptancesAccountUserAgent>(
        'user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
