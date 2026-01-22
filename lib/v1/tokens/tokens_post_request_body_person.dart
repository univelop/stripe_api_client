// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_additional_tos_acceptances.dart';
import './tokens_post_request_body_person_address.dart';
import './tokens_post_request_body_person_address_kana.dart';
import './tokens_post_request_body_person_address_kanji.dart';
import './tokens_post_request_body_person_dob.dart';
import './tokens_post_request_body_person_documents.dart';
import './tokens_post_request_body_person_full_name_aliases.dart';
import './tokens_post_request_body_person_political_exposure.dart';
import './tokens_post_request_body_person_registered_address.dart';
import './tokens_post_request_body_person_relationship.dart';
import './tokens_post_request_body_person_us_cfpb_data.dart';
import './tokens_post_request_body_person_verification.dart';

/// auto generated
/// Information for the person this token represents.
class TokensPostRequestBodyPerson implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_tos_acceptances property
  TokensPostRequestBodyPersonAdditionalTosAcceptances? additionalTosAcceptances;

  ///  The address property
  TokensPostRequestBodyPersonAddress? address;

  ///  The address_kana property
  TokensPostRequestBodyPersonAddressKana? addressKana;

  ///  The address_kanji property
  TokensPostRequestBodyPersonAddressKanji? addressKanji;

  ///  The dob property
  TokensPostRequestBodyPersonDob? dob;

  ///  The documents property
  TokensPostRequestBodyPersonDocuments? documents;

  ///  The email property
  String? email;

  ///  The first_name property
  String? firstName;

  ///  The first_name_kana property
  String? firstNameKana;

  ///  The first_name_kanji property
  String? firstNameKanji;

  ///  The full_name_aliases property
  TokensPostRequestBodyPersonFullNameAliases? fullNameAliases;

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

  ///  The nationality property
  String? nationality;

  ///  The phone property
  String? phone;

  ///  The political_exposure property
  TokensPostRequestBodyPersonPoliticalExposure? politicalExposure;

  ///  The registered_address property
  TokensPostRequestBodyPersonRegisteredAddress? registeredAddress;

  ///  The relationship property
  TokensPostRequestBodyPersonRelationship? relationship;

  ///  The ssn_last_4 property
  String? ssnLast4;

  ///  The us_cfpb_data property
  TokensPostRequestBodyPersonUsCfpbData? usCfpbData;

  ///  The verification property
  TokensPostRequestBodyPersonVerification? verification;

  /// Instantiates a new [TokensPostRequestBodyPerson] and sets the default values.
  TokensPostRequestBodyPerson() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPerson createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyPerson();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_tos_acceptances'] = (node) =>
        additionalTosAcceptances = node.getObjectValue<
                TokensPostRequestBodyPersonAdditionalTosAcceptances>(
            TokensPostRequestBodyPersonAdditionalTosAcceptances
                .createFromDiscriminatorValue);
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<TokensPostRequestBodyPersonAddress>(
            TokensPostRequestBodyPersonAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<TokensPostRequestBodyPersonAddressKana>(
            TokensPostRequestBodyPersonAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<TokensPostRequestBodyPersonAddressKanji>(
            TokensPostRequestBodyPersonAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<TokensPostRequestBodyPersonDob>(
            TokensPostRequestBodyPersonDob.createFromDiscriminatorValue);
    deserializerMap['documents'] = (node) => documents =
        node.getObjectValue<TokensPostRequestBodyPersonDocuments>(
            TokensPostRequestBodyPersonDocuments.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['first_name_kana'] =
        (node) => firstNameKana = node.getStringValue();
    deserializerMap['first_name_kanji'] =
        (node) => firstNameKanji = node.getStringValue();
    deserializerMap['full_name_aliases'] = (node) => fullNameAliases =
        node.getObjectValue<TokensPostRequestBodyPersonFullNameAliases>(
            TokensPostRequestBodyPersonFullNameAliases
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
    deserializerMap['nationality'] =
        (node) => nationality = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['political_exposure'] = (node) => politicalExposure =
        node.getEnumValue<TokensPostRequestBodyPersonPoliticalExposure>(
            (stringValue) => TokensPostRequestBodyPersonPoliticalExposure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['registered_address'] = (node) => registeredAddress =
        node.getObjectValue<TokensPostRequestBodyPersonRegisteredAddress>(
            TokensPostRequestBodyPersonRegisteredAddress
                .createFromDiscriminatorValue);
    deserializerMap['relationship'] = (node) => relationship =
        node.getObjectValue<TokensPostRequestBodyPersonRelationship>(
            TokensPostRequestBodyPersonRelationship
                .createFromDiscriminatorValue);
    deserializerMap['ssn_last_4'] = (node) => ssnLast4 = node.getStringValue();
    deserializerMap['us_cfpb_data'] = (node) => usCfpbData =
        node.getObjectValue<TokensPostRequestBodyPersonUsCfpbData>(
            TokensPostRequestBodyPersonUsCfpbData.createFromDiscriminatorValue);
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<TokensPostRequestBodyPersonVerification>(
            TokensPostRequestBodyPersonVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<TokensPostRequestBodyPersonAdditionalTosAcceptances>(
            'additional_tos_acceptances', additionalTosAcceptances);
    writer.writeObjectValue<TokensPostRequestBodyPersonAddress>(
        'address', address);
    writer.writeObjectValue<TokensPostRequestBodyPersonAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<TokensPostRequestBodyPersonAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<TokensPostRequestBodyPersonDob>('dob', dob);
    writer.writeObjectValue<TokensPostRequestBodyPersonDocuments>(
        'documents', documents);
    writer.writeStringValue('email', email);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('first_name_kana', firstNameKana);
    writer.writeStringValue('first_name_kanji', firstNameKanji);
    writer.writeObjectValue<TokensPostRequestBodyPersonFullNameAliases>(
        'full_name_aliases', fullNameAliases);
    writer.writeStringValue('gender', gender);
    writer.writeStringValue('id_number', idNumber);
    writer.writeStringValue('id_number_secondary', idNumberSecondary);
    writer.writeStringValue('last_name', lastName);
    writer.writeStringValue('last_name_kana', lastNameKana);
    writer.writeStringValue('last_name_kanji', lastNameKanji);
    writer.writeStringValue('maiden_name', maidenName);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('nationality', nationality);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<TokensPostRequestBodyPersonPoliticalExposure>(
        'political_exposure', politicalExposure, (e) => e?.value);
    writer.writeObjectValue<TokensPostRequestBodyPersonRegisteredAddress>(
        'registered_address', registeredAddress);
    writer.writeObjectValue<TokensPostRequestBodyPersonRelationship>(
        'relationship', relationship);
    writer.writeStringValue('ssn_last_4', ssnLast4);
    writer.writeObjectValue<TokensPostRequestBodyPersonUsCfpbData>(
        'us_cfpb_data', usCfpbData);
    writer.writeObjectValue<TokensPostRequestBodyPersonVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
