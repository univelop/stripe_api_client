// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_cardholder_post_request_body_individual_card_issuing_user_terms_acceptance.dart';

/// auto generated
class WithCardholderPostRequestBodyIndividualCardIssuing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The user_terms_acceptance property
  WithCardholderPostRequestBodyIndividualCardIssuingUserTermsAcceptance?
      userTermsAcceptance;

  /// Instantiates a new [WithCardholderPostRequestBodyIndividualCardIssuing] and sets the default values.
  WithCardholderPostRequestBodyIndividualCardIssuing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardholderPostRequestBodyIndividualCardIssuing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithCardholderPostRequestBodyIndividualCardIssuing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['user_terms_acceptance'] = (node) => userTermsAcceptance =
        node.getObjectValue<
                WithCardholderPostRequestBodyIndividualCardIssuingUserTermsAcceptance>(
            WithCardholderPostRequestBodyIndividualCardIssuingUserTermsAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithCardholderPostRequestBodyIndividualCardIssuingUserTermsAcceptance>(
        'user_terms_acceptance', userTermsAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
