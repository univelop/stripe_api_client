// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_cardholder_post_request_body_individual_card_issuing.dart';
import './with_cardholder_post_request_body_individual_dob.dart';
import './with_cardholder_post_request_body_individual_verification.dart';

/// auto generated
/// Additional information about an `individual` cardholder.
class WithCardholderPostRequestBodyIndividual
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_issuing property
  WithCardholderPostRequestBodyIndividualCardIssuing? cardIssuing;

  ///  The dob property
  WithCardholderPostRequestBodyIndividualDob? dob;

  ///  The first_name property
  String? firstName;

  ///  The last_name property
  String? lastName;

  ///  The verification property
  WithCardholderPostRequestBodyIndividualVerification? verification;

  /// Instantiates a new [WithCardholderPostRequestBodyIndividual] and sets the default values.
  WithCardholderPostRequestBodyIndividual() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardholderPostRequestBodyIndividual createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCardholderPostRequestBodyIndividual();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<WithCardholderPostRequestBodyIndividualCardIssuing>(
            WithCardholderPostRequestBodyIndividualCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<WithCardholderPostRequestBodyIndividualDob>(
            WithCardholderPostRequestBodyIndividualDob
                .createFromDiscriminatorValue);
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['verification'] = (node) => verification = node
        .getObjectValue<WithCardholderPostRequestBodyIndividualVerification>(
            WithCardholderPostRequestBodyIndividualVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithCardholderPostRequestBodyIndividualCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<WithCardholderPostRequestBodyIndividualDob>(
        'dob', dob);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('last_name', lastName);
    writer
        .writeObjectValue<WithCardholderPostRequestBodyIndividualVerification>(
            'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
