// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_company_address.dart';
import './accounts_post_request_body_company_address_kana.dart';
import './accounts_post_request_body_company_address_kanji.dart';
import './accounts_post_request_body_company_directorship_declaration.dart';
import './accounts_post_request_body_company_ownership_declaration.dart';
import './accounts_post_request_body_company_ownership_exemption_reason.dart';
import './accounts_post_request_body_company_registration_date.dart';
import './accounts_post_request_body_company_representative_declaration.dart';
import './accounts_post_request_body_company_structure.dart';
import './accounts_post_request_body_company_verification.dart';

/// auto generated
/// Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
class AccountsPostRequestBodyCompany implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  AccountsPostRequestBodyCompanyAddress? address;

  ///  The address_kana property
  AccountsPostRequestBodyCompanyAddressKana? addressKana;

  ///  The address_kanji property
  AccountsPostRequestBodyCompanyAddressKanji? addressKanji;

  ///  The directorship_declaration property
  AccountsPostRequestBodyCompanyDirectorshipDeclaration?
      directorshipDeclaration;

  ///  The directors_provided property
  bool? directorsProvided;

  ///  The executives_provided property
  bool? executivesProvided;

  ///  The export_license_id property
  String? exportLicenseId;

  ///  The export_purpose_code property
  String? exportPurposeCode;

  ///  The name property
  String? name;

  ///  The name_kana property
  String? nameKana;

  ///  The name_kanji property
  String? nameKanji;

  ///  The ownership_declaration property
  AccountsPostRequestBodyCompanyOwnershipDeclaration? ownershipDeclaration;

  ///  The ownership_exemption_reason property
  AccountsPostRequestBodyCompanyOwnershipExemptionReason?
      ownershipExemptionReason;

  ///  The owners_provided property
  bool? ownersProvided;

  ///  The phone property
  String? phone;

  ///  The registration_date property
  AccountsPostRequestBodyCompanyRegistrationDate? registrationDate;

  ///  The registration_number property
  String? registrationNumber;

  ///  The representative_declaration property
  AccountsPostRequestBodyCompanyRepresentativeDeclaration?
      representativeDeclaration;

  ///  The structure property
  AccountsPostRequestBodyCompanyStructure? structure;

  ///  The tax_id property
  String? taxId;

  ///  The tax_id_registrar property
  String? taxIdRegistrar;

  ///  The vat_id property
  String? vatId;

  ///  The verification property
  AccountsPostRequestBodyCompanyVerification? verification;

  /// Instantiates a new [AccountsPostRequestBodyCompany] and sets the default values.
  AccountsPostRequestBodyCompany() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyCompany createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyCompany();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<AccountsPostRequestBodyCompanyAddress>(
            AccountsPostRequestBodyCompanyAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<AccountsPostRequestBodyCompanyAddressKana>(
            AccountsPostRequestBodyCompanyAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<AccountsPostRequestBodyCompanyAddressKanji>(
            AccountsPostRequestBodyCompanyAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['directorship_declaration'] = (node) =>
        directorshipDeclaration = node.getObjectValue<
                AccountsPostRequestBodyCompanyDirectorshipDeclaration>(
            AccountsPostRequestBodyCompanyDirectorshipDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['directors_provided'] =
        (node) => directorsProvided = node.getBoolValue();
    deserializerMap['executives_provided'] =
        (node) => executivesProvided = node.getBoolValue();
    deserializerMap['export_license_id'] =
        (node) => exportLicenseId = node.getStringValue();
    deserializerMap['export_purpose_code'] =
        (node) => exportPurposeCode = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['name_kana'] = (node) => nameKana = node.getStringValue();
    deserializerMap['name_kanji'] = (node) => nameKanji = node.getStringValue();
    deserializerMap['ownership_declaration'] = (node) => ownershipDeclaration =
        node.getObjectValue<AccountsPostRequestBodyCompanyOwnershipDeclaration>(
            AccountsPostRequestBodyCompanyOwnershipDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['ownership_exemption_reason'] = (node) =>
        ownershipExemptionReason = node.getEnumValue<
                AccountsPostRequestBodyCompanyOwnershipExemptionReason>(
            (stringValue) =>
                AccountsPostRequestBodyCompanyOwnershipExemptionReason.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['owners_provided'] =
        (node) => ownersProvided = node.getBoolValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['registration_date'] = (node) => registrationDate =
        node.getObjectValue<AccountsPostRequestBodyCompanyRegistrationDate>(
            AccountsPostRequestBodyCompanyRegistrationDate
                .createFromDiscriminatorValue);
    deserializerMap['registration_number'] =
        (node) => registrationNumber = node.getStringValue();
    deserializerMap['representative_declaration'] = (node) =>
        representativeDeclaration = node.getObjectValue<
                AccountsPostRequestBodyCompanyRepresentativeDeclaration>(
            AccountsPostRequestBodyCompanyRepresentativeDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['structure'] = (node) => structure =
        node.getEnumValue<AccountsPostRequestBodyCompanyStructure>(
            (stringValue) => AccountsPostRequestBodyCompanyStructure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    deserializerMap['tax_id_registrar'] =
        (node) => taxIdRegistrar = node.getStringValue();
    deserializerMap['vat_id'] = (node) => vatId = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<AccountsPostRequestBodyCompanyVerification>(
            AccountsPostRequestBodyCompanyVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountsPostRequestBodyCompanyAddress>(
        'address', address);
    writer.writeObjectValue<AccountsPostRequestBodyCompanyAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<AccountsPostRequestBodyCompanyAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<
            AccountsPostRequestBodyCompanyDirectorshipDeclaration>(
        'directorship_declaration', directorshipDeclaration);
    writer.writeBoolValue('directors_provided', value: directorsProvided);
    writer.writeBoolValue('executives_provided', value: executivesProvided);
    writer.writeStringValue('export_license_id', exportLicenseId);
    writer.writeStringValue('export_purpose_code', exportPurposeCode);
    writer.writeStringValue('name', name);
    writer.writeStringValue('name_kana', nameKana);
    writer.writeStringValue('name_kanji', nameKanji);
    writer.writeObjectValue<AccountsPostRequestBodyCompanyOwnershipDeclaration>(
        'ownership_declaration', ownershipDeclaration);
    writer
        .writeEnumValue<AccountsPostRequestBodyCompanyOwnershipExemptionReason>(
            'ownership_exemption_reason',
            ownershipExemptionReason,
            (e) => e?.value);
    writer.writeBoolValue('owners_provided', value: ownersProvided);
    writer.writeStringValue('phone', phone);
    writer.writeObjectValue<AccountsPostRequestBodyCompanyRegistrationDate>(
        'registration_date', registrationDate);
    writer.writeStringValue('registration_number', registrationNumber);
    writer.writeObjectValue<
            AccountsPostRequestBodyCompanyRepresentativeDeclaration>(
        'representative_declaration', representativeDeclaration);
    writer.writeEnumValue<AccountsPostRequestBodyCompanyStructure>(
        'structure', structure, (e) => e?.value);
    writer.writeStringValue('tax_id', taxId);
    writer.writeStringValue('tax_id_registrar', taxIdRegistrar);
    writer.writeStringValue('vat_id', vatId);
    writer.writeObjectValue<AccountsPostRequestBodyCompanyVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
