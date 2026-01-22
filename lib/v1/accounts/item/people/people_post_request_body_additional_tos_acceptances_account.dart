// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './people_post_request_body_additional_tos_acceptances_account_user_agent.dart';

/// auto generated
class PeoplePostRequestBodyAdditionalTosAcceptancesAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The date property
  int? date;

  ///  The ip property
  String? ip;

  ///  The user_agent property
  PeoplePostRequestBodyAdditionalTosAcceptancesAccountUserAgent? userAgent;

  /// Instantiates a new [PeoplePostRequestBodyAdditionalTosAcceptancesAccount] and sets the default values.
  PeoplePostRequestBodyAdditionalTosAcceptancesAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PeoplePostRequestBodyAdditionalTosAcceptancesAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PeoplePostRequestBodyAdditionalTosAcceptancesAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getObjectValue<
            PeoplePostRequestBodyAdditionalTosAcceptancesAccountUserAgent>(
        PeoplePostRequestBodyAdditionalTosAcceptancesAccountUserAgent
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
            PeoplePostRequestBodyAdditionalTosAcceptancesAccountUserAgent>(
        'user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
