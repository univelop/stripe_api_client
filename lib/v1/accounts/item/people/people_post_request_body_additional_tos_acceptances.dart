// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './people_post_request_body_additional_tos_acceptances_account.dart';

/// auto generated
/// Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
class PeoplePostRequestBodyAdditionalTosAcceptances
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  PeoplePostRequestBodyAdditionalTosAcceptancesAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [PeoplePostRequestBodyAdditionalTosAcceptances] and sets the default values.
  PeoplePostRequestBodyAdditionalTosAcceptances() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PeoplePostRequestBodyAdditionalTosAcceptances
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PeoplePostRequestBodyAdditionalTosAcceptances();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node
        .getObjectValue<PeoplePostRequestBodyAdditionalTosAcceptancesAccount>(
            PeoplePostRequestBodyAdditionalTosAcceptancesAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<PeoplePostRequestBodyAdditionalTosAcceptancesAccount>(
            'account', account);
    writer.writeAdditionalData(additionalData);
  }
}
