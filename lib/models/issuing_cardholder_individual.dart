// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_cardholder_card_issuing.dart';
import './issuing_cardholder_individual_dob.dart';
import './issuing_cardholder_verification.dart';

/// auto generated
class IssuingCardholderIndividual implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Information related to the card_issuing program for this cardholder.
  IssuingCardholderCardIssuing? cardIssuing;

  ///  The date of birth of this cardholder.
  IssuingCardholderIndividualDob? dob;

  ///  The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
  String? firstName;

  ///  The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
  String? lastName;

  ///  Government-issued ID document for this cardholder.
  IssuingCardholderVerification? verification;

  /// Instantiates a new [IssuingCardholderIndividual] and sets the default values.
  IssuingCardholderIndividual() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardholderIndividual createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardholderIndividual();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<IssuingCardholderCardIssuing>(
            IssuingCardholderCardIssuing.createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<IssuingCardholderIndividualDob>(
            IssuingCardholderIndividualDob.createFromDiscriminatorValue);
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<IssuingCardholderVerification>(
            IssuingCardholderVerification.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingCardholderCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<IssuingCardholderIndividualDob>('dob', dob);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('last_name', lastName);
    writer.writeObjectValue<IssuingCardholderVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
