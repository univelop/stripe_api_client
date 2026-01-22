// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './legal_entity_dob.dart';
import './legal_entity_japan_address.dart';
import './legal_entity_person_verification.dart';
import './person_additional_tos_acceptances.dart';
import './person_future_requirements.dart';
import './person_metadata.dart';
import './person_object.dart';
import './person_political_exposure.dart';
import './person_relationship.dart';
import './person_requirements.dart';
import './person_us_cfpb_data.dart';

/// auto generated
/// This is an object representing a person associated with a Stripe account.A platform can only access a subset of data in a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.See the [Standard onboarding](/connect/standard-accounts) or [Express onboarding](/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](/connect/handling-api-verification#person-information).
class Person implements AdditionalDataHolder, Parsable {
  ///  The account the person is associated with.
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_tos_acceptances property
  PersonAdditionalTosAcceptances? additionalTosAcceptances;

  ///  The address property
  Address? address;

  ///  The address_kana property
  LegalEntityJapanAddress? addressKana;

  ///  The address_kanji property
  LegalEntityJapanAddress? addressKanji;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The dob property
  LegalEntityDob? dob;

  ///  The person's email address. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? email;

  ///  The person's first name. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? firstName;

  ///  The Kana variation of the person's first name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? firstNameKana;

  ///  The Kanji variation of the person's first name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? firstNameKanji;

  ///  A list of alternate names or aliases that the person is known by. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  Iterable<String>? fullNameAliases;

  ///  The future_requirements property
  PersonFutureRequirements? futureRequirements;

  ///  The person's gender.
  String? gender;

  ///  Unique identifier for the object.
  String? id;

  ///  Whether the person's `id_number` was provided. True if either the full ID number was provided or if only the required part of the ID number was provided (ex. last four of an individual's SSN for the US indicated by `ssn_last_4_provided`).
  bool? idNumberProvided;

  ///  Whether the person's `id_number_secondary` was provided.
  bool? idNumberSecondaryProvided;

  ///  The person's last name. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? lastName;

  ///  The Kana variation of the person's last name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? lastNameKana;

  ///  The Kanji variation of the person's last name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? lastNameKanji;

  ///  The person's maiden name.
  String? maidenName;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PersonMetadata? metadata;

  ///  The country where the person is a national.
  String? nationality;

  ///  String representing the object's type. Objects of the same type share the same value.
  PersonObject? object;

  ///  The person's phone number.
  String? phone;

  ///  Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
  PersonPoliticalExposure? politicalExposure;

  ///  The registered_address property
  Address? registeredAddress;

  ///  The relationship property
  PersonRelationship? relationship;

  ///  The requirements property
  PersonRequirements? requirements;

  ///  Whether the last four digits of the person's Social Security number have been provided (U.S. only).
  bool? ssnLast4Provided;

  ///  Demographic data related to the person.
  PersonUsCfpbData? usCfpbData;

  ///  The verification property
  LegalEntityPersonVerification? verification;

  /// Instantiates a new [Person] and sets the default values.
  Person() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Person createFromDiscriminatorValue(ParseNode parseNode) {
    return Person();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['additional_tos_acceptances'] = (node) =>
        additionalTosAcceptances =
            node.getObjectValue<PersonAdditionalTosAcceptances>(
                PersonAdditionalTosAcceptances.createFromDiscriminatorValue);
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<LegalEntityJapanAddress>(
            LegalEntityJapanAddress.createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<LegalEntityJapanAddress>(
            LegalEntityJapanAddress.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<LegalEntityDob>(
            LegalEntityDob.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['first_name_kana'] =
        (node) => firstNameKana = node.getStringValue();
    deserializerMap['first_name_kanji'] =
        (node) => firstNameKanji = node.getStringValue();
    deserializerMap['full_name_aliases'] = (node) =>
        fullNameAliases = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['future_requirements'] = (node) => futureRequirements =
        node.getObjectValue<PersonFutureRequirements>(
            PersonFutureRequirements.createFromDiscriminatorValue);
    deserializerMap['gender'] = (node) => gender = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['id_number_provided'] =
        (node) => idNumberProvided = node.getBoolValue();
    deserializerMap['id_number_secondary_provided'] =
        (node) => idNumberSecondaryProvided = node.getBoolValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['last_name_kana'] =
        (node) => lastNameKana = node.getStringValue();
    deserializerMap['last_name_kanji'] =
        (node) => lastNameKanji = node.getStringValue();
    deserializerMap['maiden_name'] =
        (node) => maidenName = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PersonMetadata>(
            PersonMetadata.createFromDiscriminatorValue);
    deserializerMap['nationality'] =
        (node) => nationality = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PersonObject>((stringValue) => PersonObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['political_exposure'] = (node) => politicalExposure =
        node.getEnumValue<PersonPoliticalExposure>((stringValue) =>
            PersonPoliticalExposure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['registered_address'] = (node) => registeredAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['relationship'] = (node) => relationship =
        node.getObjectValue<PersonRelationship>(
            PersonRelationship.createFromDiscriminatorValue);
    deserializerMap['requirements'] = (node) => requirements =
        node.getObjectValue<PersonRequirements>(
            PersonRequirements.createFromDiscriminatorValue);
    deserializerMap['ssn_last_4_provided'] =
        (node) => ssnLast4Provided = node.getBoolValue();
    deserializerMap['us_cfpb_data'] = (node) => usCfpbData =
        node.getObjectValue<PersonUsCfpbData>(
            PersonUsCfpbData.createFromDiscriminatorValue);
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<LegalEntityPersonVerification>(
            LegalEntityPersonVerification.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeObjectValue<PersonAdditionalTosAcceptances>(
        'additional_tos_acceptances', additionalTosAcceptances);
    writer.writeObjectValue<Address>('address', address);
    writer.writeObjectValue<LegalEntityJapanAddress>(
        'address_kana', addressKana);
    writer.writeObjectValue<LegalEntityJapanAddress>(
        'address_kanji', addressKanji);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<LegalEntityDob>('dob', dob);
    writer.writeStringValue('email', email);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('first_name_kana', firstNameKana);
    writer.writeStringValue('first_name_kanji', firstNameKanji);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'full_name_aliases', fullNameAliases);
    writer.writeObjectValue<PersonFutureRequirements>(
        'future_requirements', futureRequirements);
    writer.writeStringValue('gender', gender);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('id_number_provided', value: idNumberProvided);
    writer.writeBoolValue('id_number_secondary_provided',
        value: idNumberSecondaryProvided);
    writer.writeStringValue('last_name', lastName);
    writer.writeStringValue('last_name_kana', lastNameKana);
    writer.writeStringValue('last_name_kanji', lastNameKanji);
    writer.writeStringValue('maiden_name', maidenName);
    writer.writeObjectValue<PersonMetadata>('metadata', metadata);
    writer.writeStringValue('nationality', nationality);
    writer.writeEnumValue<PersonObject>('object', object, (e) => e?.value);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<PersonPoliticalExposure>(
        'political_exposure', politicalExposure, (e) => e?.value);
    writer.writeObjectValue<Address>('registered_address', registeredAddress);
    writer.writeObjectValue<PersonRelationship>('relationship', relationship);
    writer.writeObjectValue<PersonRequirements>('requirements', requirements);
    writer.writeBoolValue('ssn_last_4_provided', value: ssnLast4Provided);
    writer.writeObjectValue<PersonUsCfpbData>('us_cfpb_data', usCfpbData);
    writer.writeObjectValue<LegalEntityPersonVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
