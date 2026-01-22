// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_company_address.dart';
import './with_account_post_request_body_company_address_kana.dart';
import './with_account_post_request_body_company_address_kanji.dart';
import './with_account_post_request_body_company_directorship_declaration.dart';
import './with_account_post_request_body_company_ownership_declaration.dart';
import './with_account_post_request_body_company_ownership_exemption_reason.dart';
import './with_account_post_request_body_company_registration_date.dart';
import './with_account_post_request_body_company_representative_declaration.dart';
import './with_account_post_request_body_company_structure.dart';
import './with_account_post_request_body_company_verification.dart';

/// auto generated
/// Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
class WithAccountPostRequestBodyCompany
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithAccountPostRequestBodyCompanyAddress? address;

  ///  The address_kana property
  WithAccountPostRequestBodyCompanyAddressKana? addressKana;

  ///  The address_kanji property
  WithAccountPostRequestBodyCompanyAddressKanji? addressKanji;

  ///  The directorship_declaration property
  WithAccountPostRequestBodyCompanyDirectorshipDeclaration?
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
  WithAccountPostRequestBodyCompanyOwnershipDeclaration? ownershipDeclaration;

  ///  The ownership_exemption_reason property
  WithAccountPostRequestBodyCompanyOwnershipExemptionReason?
      ownershipExemptionReason;

  ///  The owners_provided property
  bool? ownersProvided;

  ///  The phone property
  String? phone;

  ///  The registration_date property
  WithAccountPostRequestBodyCompanyRegistrationDate? registrationDate;

  ///  The registration_number property
  String? registrationNumber;

  ///  The representative_declaration property
  WithAccountPostRequestBodyCompanyRepresentativeDeclaration?
      representativeDeclaration;

  ///  The structure property
  WithAccountPostRequestBodyCompanyStructure? structure;

  ///  The tax_id property
  String? taxId;

  ///  The tax_id_registrar property
  String? taxIdRegistrar;

  ///  The vat_id property
  String? vatId;

  ///  The verification property
  WithAccountPostRequestBodyCompanyVerification? verification;

  /// Instantiates a new [WithAccountPostRequestBodyCompany] and sets the default values.
  WithAccountPostRequestBodyCompany() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyCompany createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodyCompany();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            WithAccountPostRequestBodyCompanyAddress>(
        WithAccountPostRequestBodyCompanyAddress.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<WithAccountPostRequestBodyCompanyAddressKana>(
            WithAccountPostRequestBodyCompanyAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<WithAccountPostRequestBodyCompanyAddressKanji>(
            WithAccountPostRequestBodyCompanyAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['directorship_declaration'] = (node) =>
        directorshipDeclaration = node.getObjectValue<
                WithAccountPostRequestBodyCompanyDirectorshipDeclaration>(
            WithAccountPostRequestBodyCompanyDirectorshipDeclaration
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
        node.getObjectValue<
                WithAccountPostRequestBodyCompanyOwnershipDeclaration>(
            WithAccountPostRequestBodyCompanyOwnershipDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['ownership_exemption_reason'] = (node) =>
        ownershipExemptionReason = node.getEnumValue<
                WithAccountPostRequestBodyCompanyOwnershipExemptionReason>(
            (stringValue) =>
                WithAccountPostRequestBodyCompanyOwnershipExemptionReason.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['owners_provided'] =
        (node) => ownersProvided = node.getBoolValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['registration_date'] = (node) => registrationDate =
        node.getObjectValue<WithAccountPostRequestBodyCompanyRegistrationDate>(
            WithAccountPostRequestBodyCompanyRegistrationDate
                .createFromDiscriminatorValue);
    deserializerMap['registration_number'] =
        (node) => registrationNumber = node.getStringValue();
    deserializerMap['representative_declaration'] = (node) =>
        representativeDeclaration = node.getObjectValue<
                WithAccountPostRequestBodyCompanyRepresentativeDeclaration>(
            WithAccountPostRequestBodyCompanyRepresentativeDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['structure'] = (node) => structure =
        node.getEnumValue<WithAccountPostRequestBodyCompanyStructure>(
            (stringValue) => WithAccountPostRequestBodyCompanyStructure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    deserializerMap['tax_id_registrar'] =
        (node) => taxIdRegistrar = node.getStringValue();
    deserializerMap['vat_id'] = (node) => vatId = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<WithAccountPostRequestBodyCompanyVerification>(
            WithAccountPostRequestBodyCompanyVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithAccountPostRequestBodyCompanyAddress>(
        'address', address);
    writer.writeObjectValue<WithAccountPostRequestBodyCompanyAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<WithAccountPostRequestBodyCompanyAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCompanyDirectorshipDeclaration>(
        'directorship_declaration', directorshipDeclaration);
    writer.writeBoolValue('directors_provided', value: directorsProvided);
    writer.writeBoolValue('executives_provided', value: executivesProvided);
    writer.writeStringValue('export_license_id', exportLicenseId);
    writer.writeStringValue('export_purpose_code', exportPurposeCode);
    writer.writeStringValue('name', name);
    writer.writeStringValue('name_kana', nameKana);
    writer.writeStringValue('name_kanji', nameKanji);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCompanyOwnershipDeclaration>(
        'ownership_declaration', ownershipDeclaration);
    writer.writeEnumValue<
            WithAccountPostRequestBodyCompanyOwnershipExemptionReason>(
        'ownership_exemption_reason',
        ownershipExemptionReason,
        (e) => e?.value);
    writer.writeBoolValue('owners_provided', value: ownersProvided);
    writer.writeStringValue('phone', phone);
    writer.writeObjectValue<WithAccountPostRequestBodyCompanyRegistrationDate>(
        'registration_date', registrationDate);
    writer.writeStringValue('registration_number', registrationNumber);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCompanyRepresentativeDeclaration>(
        'representative_declaration', representativeDeclaration);
    writer.writeEnumValue<WithAccountPostRequestBodyCompanyStructure>(
        'structure', structure, (e) => e?.value);
    writer.writeStringValue('tax_id', taxId);
    writer.writeStringValue('tax_id_registrar', taxIdRegistrar);
    writer.writeStringValue('vat_id', vatId);
    writer.writeObjectValue<WithAccountPostRequestBodyCompanyVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
