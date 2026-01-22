// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_cardholder_user_terms_acceptance.dart';

/// auto generated
class IssuingCardholderCardIssuing implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
  IssuingCardholderUserTermsAcceptance? userTermsAcceptance;

  /// Instantiates a new [IssuingCardholderCardIssuing] and sets the default values.
  IssuingCardholderCardIssuing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardholderCardIssuing createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardholderCardIssuing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['user_terms_acceptance'] = (node) => userTermsAcceptance =
        node.getObjectValue<IssuingCardholderUserTermsAcceptance>(
            IssuingCardholderUserTermsAcceptance.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingCardholderUserTermsAcceptance>(
        'user_terms_acceptance', userTermsAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
