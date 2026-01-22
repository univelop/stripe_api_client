// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cardholders_post_request_body_individual_card_issuing_user_terms_acceptance.dart';

/// auto generated
class CardholdersPostRequestBodyIndividualCardIssuing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The user_terms_acceptance property
  CardholdersPostRequestBodyIndividualCardIssuingUserTermsAcceptance?
      userTermsAcceptance;

  /// Instantiates a new [CardholdersPostRequestBodyIndividualCardIssuing] and sets the default values.
  CardholdersPostRequestBodyIndividualCardIssuing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardholdersPostRequestBodyIndividualCardIssuing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CardholdersPostRequestBodyIndividualCardIssuing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['user_terms_acceptance'] = (node) => userTermsAcceptance =
        node.getObjectValue<
                CardholdersPostRequestBodyIndividualCardIssuingUserTermsAcceptance>(
            CardholdersPostRequestBodyIndividualCardIssuingUserTermsAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CardholdersPostRequestBodyIndividualCardIssuingUserTermsAcceptance>(
        'user_terms_acceptance', userTermsAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
