// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_individual_address.dart';
import './accounts_post_request_body_individual_address_kana.dart';
import './accounts_post_request_body_individual_address_kanji.dart';
import './accounts_post_request_body_individual_dob.dart';
import './accounts_post_request_body_individual_full_name_aliases.dart';
import './accounts_post_request_body_individual_political_exposure.dart';
import './accounts_post_request_body_individual_registered_address.dart';
import './accounts_post_request_body_individual_relationship.dart';
import './accounts_post_request_body_individual_verification.dart';

/// auto generated
/// Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
class AccountsPostRequestBodyIndividual
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  AccountsPostRequestBodyIndividualAddress? address;

  ///  The address_kana property
  AccountsPostRequestBodyIndividualAddressKana? addressKana;

  ///  The address_kanji property
  AccountsPostRequestBodyIndividualAddressKanji? addressKanji;

  ///  The dob property
  AccountsPostRequestBodyIndividualDob? dob;

  ///  The email property
  String? email;

  ///  The first_name property
  String? firstName;

  ///  The first_name_kana property
  String? firstNameKana;

  ///  The first_name_kanji property
  String? firstNameKanji;

  ///  The full_name_aliases property
  AccountsPostRequestBodyIndividualFullNameAliases? fullNameAliases;

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
  AccountsPostRequestBodyIndividualPoliticalExposure? politicalExposure;

  ///  The registered_address property
  AccountsPostRequestBodyIndividualRegisteredAddress? registeredAddress;

  ///  The relationship property
  AccountsPostRequestBodyIndividualRelationship? relationship;

  ///  The ssn_last_4 property
  String? ssnLast4;

  ///  The verification property
  AccountsPostRequestBodyIndividualVerification? verification;

  /// Instantiates a new [AccountsPostRequestBodyIndividual] and sets the default values.
  AccountsPostRequestBodyIndividual() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyIndividual createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyIndividual();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            AccountsPostRequestBodyIndividualAddress>(
        AccountsPostRequestBodyIndividualAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<AccountsPostRequestBodyIndividualAddressKana>(
            AccountsPostRequestBodyIndividualAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<AccountsPostRequestBodyIndividualAddressKanji>(
            AccountsPostRequestBodyIndividualAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<AccountsPostRequestBodyIndividualDob>(
            AccountsPostRequestBodyIndividualDob.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['first_name_kana'] =
        (node) => firstNameKana = node.getStringValue();
    deserializerMap['first_name_kanji'] =
        (node) => firstNameKanji = node.getStringValue();
    deserializerMap['full_name_aliases'] = (node) => fullNameAliases =
        node.getObjectValue<AccountsPostRequestBodyIndividualFullNameAliases>(
            AccountsPostRequestBodyIndividualFullNameAliases
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
    deserializerMap['political_exposure'] = (node) => politicalExposure =
        node.getEnumValue<AccountsPostRequestBodyIndividualPoliticalExposure>(
            (stringValue) => AccountsPostRequestBodyIndividualPoliticalExposure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['registered_address'] = (node) => registeredAddress =
        node.getObjectValue<AccountsPostRequestBodyIndividualRegisteredAddress>(
            AccountsPostRequestBodyIndividualRegisteredAddress
                .createFromDiscriminatorValue);
    deserializerMap['relationship'] = (node) => relationship =
        node.getObjectValue<AccountsPostRequestBodyIndividualRelationship>(
            AccountsPostRequestBodyIndividualRelationship
                .createFromDiscriminatorValue);
    deserializerMap['ssn_last_4'] = (node) => ssnLast4 = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<AccountsPostRequestBodyIndividualVerification>(
            AccountsPostRequestBodyIndividualVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountsPostRequestBodyIndividualAddress>(
        'address', address);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualDob>('dob', dob);
    writer.writeStringValue('email', email);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('first_name_kana', firstNameKana);
    writer.writeStringValue('first_name_kanji', firstNameKanji);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualFullNameAliases>(
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
    writer.writeEnumValue<AccountsPostRequestBodyIndividualPoliticalExposure>(
        'political_exposure', politicalExposure, (e) => e?.value);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualRegisteredAddress>(
        'registered_address', registeredAddress);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualRelationship>(
        'relationship', relationship);
    writer.writeStringValue('ssn_last_4', ssnLast4);
    writer.writeObjectValue<AccountsPostRequestBodyIndividualVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
