// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cardholders_post_request_body_individual_card_issuing.dart';
import './cardholders_post_request_body_individual_dob.dart';
import './cardholders_post_request_body_individual_verification.dart';

/// auto generated
/// Additional information about an `individual` cardholder.
class CardholdersPostRequestBodyIndividual
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_issuing property
  CardholdersPostRequestBodyIndividualCardIssuing? cardIssuing;

  ///  The dob property
  CardholdersPostRequestBodyIndividualDob? dob;

  ///  The first_name property
  String? firstName;

  ///  The last_name property
  String? lastName;

  ///  The verification property
  CardholdersPostRequestBodyIndividualVerification? verification;

  /// Instantiates a new [CardholdersPostRequestBodyIndividual] and sets the default values.
  CardholdersPostRequestBodyIndividual() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardholdersPostRequestBodyIndividual createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardholdersPostRequestBodyIndividual();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<CardholdersPostRequestBodyIndividualCardIssuing>(
            CardholdersPostRequestBodyIndividualCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob = node.getObjectValue<
            CardholdersPostRequestBodyIndividualDob>(
        CardholdersPostRequestBodyIndividualDob.createFromDiscriminatorValue);
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<CardholdersPostRequestBodyIndividualVerification>(
            CardholdersPostRequestBodyIndividualVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CardholdersPostRequestBodyIndividualCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<CardholdersPostRequestBodyIndividualDob>(
        'dob', dob);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('last_name', lastName);
    writer.writeObjectValue<CardholdersPostRequestBodyIndividualVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
