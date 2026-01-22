// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account_individual_address.dart';
import './tokens_post_request_body_account_individual_address_kana.dart';
import './tokens_post_request_body_account_individual_address_kanji.dart';
import './tokens_post_request_body_account_individual_dob.dart';
import './tokens_post_request_body_account_individual_full_name_aliases.dart';
import './tokens_post_request_body_account_individual_political_exposure.dart';
import './tokens_post_request_body_account_individual_registered_address.dart';
import './tokens_post_request_body_account_individual_relationship.dart';
import './tokens_post_request_body_account_individual_verification.dart';

/// auto generated
class TokensPostRequestBodyAccountIndividual
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  TokensPostRequestBodyAccountIndividualAddress? address;

  ///  The address_kana property
  TokensPostRequestBodyAccountIndividualAddressKana? addressKana;

  ///  The address_kanji property
  TokensPostRequestBodyAccountIndividualAddressKanji? addressKanji;

  ///  The dob property
  TokensPostRequestBodyAccountIndividualDob? dob;

  ///  The email property
  String? email;

  ///  The first_name property
  String? firstName;

  ///  The first_name_kana property
  String? firstNameKana;

  ///  The first_name_kanji property
  String? firstNameKanji;

  ///  The full_name_aliases property
  TokensPostRequestBodyAccountIndividualFullNameAliases? fullNameAliases;

  ///  The gender property
  String? gender;

  ///  The id_number property
  String? idNumber;

  ///  The id_number_secondary property
  String? idNumberSecondary;

  ///  The last_name property
  String? lastName;

  ///  The last_name_kana property
  String? lastNameKana;

  ///  The last_name_kanji property
  String? lastNameKanji;

  ///  The maiden_name property
  String? maidenName;

  ///  The metadata property
  String? metadata;

  ///  The phone property
  String? phone;

  ///  The political_exposure property
  TokensPostRequestBodyAccountIndividualPoliticalExposure? politicalExposure;

  ///  The registered_address property
  TokensPostRequestBodyAccountIndividualRegisteredAddress? registeredAddress;

  ///  The relationship property
  TokensPostRequestBodyAccountIndividualRelationship? relationship;

  ///  The ssn_last_4 property
  String? ssnLast4;

  ///  The verification property
  TokensPostRequestBodyAccountIndividualVerification? verification;

  /// Instantiates a new [TokensPostRequestBodyAccountIndividual] and sets the default values.
  TokensPostRequestBodyAccountIndividual() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyAccountIndividual createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyAccountIndividual();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<TokensPostRequestBodyAccountIndividualAddress>(
            TokensPostRequestBodyAccountIndividualAddress
                .createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<TokensPostRequestBodyAccountIndividualAddressKana>(
            TokensPostRequestBodyAccountIndividualAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<TokensPostRequestBodyAccountIndividualAddressKanji>(
            TokensPostRequestBodyAccountIndividualAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob = node.getObjectValue<
            TokensPostRequestBodyAccountIndividualDob>(
        TokensPostRequestBodyAccountIndividualDob.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['first_name_kana'] =
        (node) => firstNameKana = node.getStringValue();
    deserializerMap['first_name_kanji'] =
        (node) => firstNameKanji = node.getStringValue();
    deserializerMap['full_name_aliases'] = (node) => fullNameAliases = node
        .getObjectValue<TokensPostRequestBodyAccountIndividualFullNameAliases>(
            TokensPostRequestBodyAccountIndividualFullNameAliases
                .createFromDiscriminatorValue);
    deserializerMap['gender'] = (node) => gender = node.getStringValue();
    deserializerMap['id_number'] = (node) => idNumber = node.getStringValue();
    deserializerMap['id_number_secondary'] =
        (node) => idNumberSecondary = node.getStringValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['last_name_kana'] =
        (node) => lastNameKana = node.getStringValue();
    deserializerMap['last_name_kanji'] =
        (node) => lastNameKanji = node.getStringValue();
    deserializerMap['maiden_name'] =
        (node) => maidenName = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['political_exposure'] = (node) => politicalExposure = node
        .getEnumValue<TokensPostRequestBodyAccountIndividualPoliticalExposure>(
            (stringValue) =>
                TokensPostRequestBodyAccountIndividualPoliticalExposure.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['registered_address'] = (node) => registeredAddress =
        node.getObjectValue<
                TokensPostRequestBodyAccountIndividualRegisteredAddress>(
            TokensPostRequestBodyAccountIndividualRegisteredAddress
                .createFromDiscriminatorValue);
    deserializerMap['relationship'] = (node) => relationship =
        node.getObjectValue<TokensPostRequestBodyAccountIndividualRelationship>(
            TokensPostRequestBodyAccountIndividualRelationship
                .createFromDiscriminatorValue);
    deserializerMap['ssn_last_4'] = (node) => ssnLast4 = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<TokensPostRequestBodyAccountIndividualVerification>(
            TokensPostRequestBodyAccountIndividualVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividualAddress>(
        'address', address);
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividualAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividualAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividualDob>(
        'dob', dob);
    writer.writeStringValue('email', email);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('first_name_kana', firstNameKana);
    writer.writeStringValue('first_name_kanji', firstNameKanji);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountIndividualFullNameAliases>(
        'full_name_aliases', fullNameAliases);
    writer.writeStringValue('gender', gender);
    writer.writeStringValue('id_number', idNumber);
    writer.writeStringValue('id_number_secondary', idNumberSecondary);
    writer.writeStringValue('last_name', lastName);
    writer.writeStringValue('last_name_kana', lastNameKana);
    writer.writeStringValue('last_name_kanji', lastNameKanji);
    writer.writeStringValue('maiden_name', maidenName);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<
            TokensPostRequestBodyAccountIndividualPoliticalExposure>(
        'political_exposure', politicalExposure, (e) => e?.value);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountIndividualRegisteredAddress>(
        'registered_address', registeredAddress);
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividualRelationship>(
        'relationship', relationship);
    writer.writeStringValue('ssn_last_4', ssnLast4);
    writer.writeObjectValue<TokensPostRequestBodyAccountIndividualVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
