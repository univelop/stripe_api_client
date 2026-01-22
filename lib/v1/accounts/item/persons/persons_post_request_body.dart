// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './persons_post_request_body_additional_tos_acceptances.dart';
import './persons_post_request_body_address.dart';
import './persons_post_request_body_address_kana.dart';
import './persons_post_request_body_address_kanji.dart';
import './persons_post_request_body_dob.dart';
import './persons_post_request_body_documents.dart';
import './persons_post_request_body_full_name_aliases.dart';
import './persons_post_request_body_political_exposure.dart';
import './persons_post_request_body_registered_address.dart';
import './persons_post_request_body_relationship.dart';
import './persons_post_request_body_us_cfpb_data.dart';
import './persons_post_request_body_verification.dart';

/// auto generated
class PersonsPostRequestBody implements Parsable {
  ///  Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
  PersonsPostRequestBodyAdditionalTosAcceptances? additionalTosAcceptances;

  ///  The person's address.
  PersonsPostRequestBodyAddress? address;

  ///  The Kana variation of the person's address (Japan only).
  PersonsPostRequestBodyAddressKana? addressKana;

  ///  The Kanji variation of the person's address (Japan only).
  PersonsPostRequestBodyAddressKanji? addressKanji;

  ///  The person's date of birth.
  PersonsPostRequestBodyDob? dob;

  ///  Documents that may be submitted to satisfy various informational requests.
  PersonsPostRequestBodyDocuments? documents;

  ///  The person's email address.
  String? email;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The person's first name.
  String? firstName;

  ///  The Kana variation of the person's first name (Japan only).
  String? firstNameKana;

  ///  The Kanji variation of the person's first name (Japan only).
  String? firstNameKanji;

  ///  A list of alternate names or aliases that the person is known by.
  PersonsPostRequestBodyFullNameAliases? fullNameAliases;

  ///  The person's gender (International regulations require either "male" or "female").
  String? gender;

  ///  The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
  String? idNumber;

  ///  The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
  String? idNumberSecondary;

  ///  The person's last name.
  String? lastName;

  ///  The Kana variation of the person's last name (Japan only).
  String? lastNameKana;

  ///  The Kanji variation of the person's last name (Japan only).
  String? lastNameKanji;

  ///  The person's maiden name.
  String? maidenName;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
  String? nationality;

  ///  A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
  String? personToken;

  ///  The person's phone number.
  String? phone;

  ///  Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
  PersonsPostRequestBodyPoliticalExposure? politicalExposure;

  ///  The person's registered address.
  PersonsPostRequestBodyRegisteredAddress? registeredAddress;

  ///  The relationship that this person has with the account's legal entity.
  PersonsPostRequestBodyRelationship? relationship;

  ///  The last four digits of the person's Social Security number (U.S. only).
  String? ssnLast4;

  ///  Demographic data related to the person.
  PersonsPostRequestBodyUsCfpbData? usCfpbData;

  ///  The person's verification status.
  PersonsPostRequestBodyVerification? verification;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PersonsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_tos_acceptances'] = (node) =>
        additionalTosAcceptances =
            node.getObjectValue<PersonsPostRequestBodyAdditionalTosAcceptances>(
                PersonsPostRequestBodyAdditionalTosAcceptances
                    .createFromDiscriminatorValue);
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<PersonsPostRequestBodyAddress>(
            PersonsPostRequestBodyAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<PersonsPostRequestBodyAddressKana>(
            PersonsPostRequestBodyAddressKana.createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<PersonsPostRequestBodyAddressKanji>(
            PersonsPostRequestBodyAddressKanji.createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<PersonsPostRequestBodyDob>(
            PersonsPostRequestBodyDob.createFromDiscriminatorValue);
    deserializerMap['documents'] = (node) => documents =
        node.getObjectValue<PersonsPostRequestBodyDocuments>(
            PersonsPostRequestBodyDocuments.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['first_name_kana'] =
        (node) => firstNameKana = node.getStringValue();
    deserializerMap['first_name_kanji'] =
        (node) => firstNameKanji = node.getStringValue();
    deserializerMap['full_name_aliases'] = (node) => fullNameAliases =
        node.getObjectValue<PersonsPostRequestBodyFullNameAliases>(
            PersonsPostRequestBodyFullNameAliases.createFromDiscriminatorValue);
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
    deserializerMap['person_token'] =
        (node) => personToken = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['political_exposure'] = (node) => politicalExposure =
        node.getEnumValue<PersonsPostRequestBodyPoliticalExposure>(
            (stringValue) => PersonsPostRequestBodyPoliticalExposure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['registered_address'] = (node) => registeredAddress =
        node.getObjectValue<PersonsPostRequestBodyRegisteredAddress>(
            PersonsPostRequestBodyRegisteredAddress
                .createFromDiscriminatorValue);
    deserializerMap['relationship'] = (node) => relationship =
        node.getObjectValue<PersonsPostRequestBodyRelationship>(
            PersonsPostRequestBodyRelationship.createFromDiscriminatorValue);
    deserializerMap['ssn_last_4'] = (node) => ssnLast4 = node.getStringValue();
    deserializerMap['us_cfpb_data'] = (node) => usCfpbData =
        node.getObjectValue<PersonsPostRequestBodyUsCfpbData>(
            PersonsPostRequestBodyUsCfpbData.createFromDiscriminatorValue);
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<PersonsPostRequestBodyVerification>(
            PersonsPostRequestBodyVerification.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PersonsPostRequestBodyAdditionalTosAcceptances>(
        'additional_tos_acceptances', additionalTosAcceptances);
    writer.writeObjectValue<PersonsPostRequestBodyAddress>('address', address);
    writer.writeObjectValue<PersonsPostRequestBodyAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<PersonsPostRequestBodyAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<PersonsPostRequestBodyDob>('dob', dob);
    writer.writeObjectValue<PersonsPostRequestBodyDocuments>(
        'documents', documents);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('first_name_kana', firstNameKana);
    writer.writeStringValue('first_name_kanji', firstNameKanji);
    writer.writeObjectValue<PersonsPostRequestBodyFullNameAliases>(
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
    writer.writeStringValue('person_token', personToken);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<PersonsPostRequestBodyPoliticalExposure>(
        'political_exposure', politicalExposure, (e) => e?.value);
    writer.writeObjectValue<PersonsPostRequestBodyRegisteredAddress>(
        'registered_address', registeredAddress);
    writer.writeObjectValue<PersonsPostRequestBodyRelationship>(
        'relationship', relationship);
    writer.writeStringValue('ssn_last_4', ssnLast4);
    writer.writeObjectValue<PersonsPostRequestBodyUsCfpbData>(
        'us_cfpb_data', usCfpbData);
    writer.writeObjectValue<PersonsPostRequestBodyVerification>(
        'verification', verification);
  }
}
