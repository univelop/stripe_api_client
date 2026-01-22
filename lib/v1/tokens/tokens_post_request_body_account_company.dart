// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account_company_address.dart';
import './tokens_post_request_body_account_company_address_kana.dart';
import './tokens_post_request_body_account_company_address_kanji.dart';
import './tokens_post_request_body_account_company_directorship_declaration.dart';
import './tokens_post_request_body_account_company_ownership_declaration.dart';
import './tokens_post_request_body_account_company_ownership_exemption_reason.dart';
import './tokens_post_request_body_account_company_registration_date.dart';
import './tokens_post_request_body_account_company_representative_declaration.dart';
import './tokens_post_request_body_account_company_structure.dart';
import './tokens_post_request_body_account_company_verification.dart';

/// auto generated
class TokensPostRequestBodyAccountCompany
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  TokensPostRequestBodyAccountCompanyAddress? address;

  ///  The address_kana property
  TokensPostRequestBodyAccountCompanyAddressKana? addressKana;

  ///  The address_kanji property
  TokensPostRequestBodyAccountCompanyAddressKanji? addressKanji;

  ///  The directorship_declaration property
  TokensPostRequestBodyAccountCompanyDirectorshipDeclaration?
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
  TokensPostRequestBodyAccountCompanyOwnershipDeclaration? ownershipDeclaration;

  ///  The ownership_declaration_shown_and_signed property
  bool? ownershipDeclarationShownAndSigned;

  ///  The ownership_exemption_reason property
  TokensPostRequestBodyAccountCompanyOwnershipExemptionReason?
      ownershipExemptionReason;

  ///  The owners_provided property
  bool? ownersProvided;

  ///  The phone property
  String? phone;

  ///  The registration_date property
  TokensPostRequestBodyAccountCompanyRegistrationDate? registrationDate;

  ///  The registration_number property
  String? registrationNumber;

  ///  The representative_declaration property
  TokensPostRequestBodyAccountCompanyRepresentativeDeclaration?
      representativeDeclaration;

  ///  The structure property
  TokensPostRequestBodyAccountCompanyStructure? structure;

  ///  The tax_id property
  String? taxId;

  ///  The tax_id_registrar property
  String? taxIdRegistrar;

  ///  The vat_id property
  String? vatId;

  ///  The verification property
  TokensPostRequestBodyAccountCompanyVerification? verification;

  /// Instantiates a new [TokensPostRequestBodyAccountCompany] and sets the default values.
  TokensPostRequestBodyAccountCompany() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyAccountCompany createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyAccountCompany();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<TokensPostRequestBodyAccountCompanyAddress>(
            TokensPostRequestBodyAccountCompanyAddress
                .createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<TokensPostRequestBodyAccountCompanyAddressKana>(
            TokensPostRequestBodyAccountCompanyAddressKana
                .createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<TokensPostRequestBodyAccountCompanyAddressKanji>(
            TokensPostRequestBodyAccountCompanyAddressKanji
                .createFromDiscriminatorValue);
    deserializerMap['directorship_declaration'] = (node) =>
        directorshipDeclaration = node.getObjectValue<
                TokensPostRequestBodyAccountCompanyDirectorshipDeclaration>(
            TokensPostRequestBodyAccountCompanyDirectorshipDeclaration
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
                TokensPostRequestBodyAccountCompanyOwnershipDeclaration>(
            TokensPostRequestBodyAccountCompanyOwnershipDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['ownership_declaration_shown_and_signed'] =
        (node) => ownershipDeclarationShownAndSigned = node.getBoolValue();
    deserializerMap['ownership_exemption_reason'] = (node) =>
        ownershipExemptionReason = node.getEnumValue<
                TokensPostRequestBodyAccountCompanyOwnershipExemptionReason>(
            (stringValue) =>
                TokensPostRequestBodyAccountCompanyOwnershipExemptionReason
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['owners_provided'] =
        (node) => ownersProvided = node.getBoolValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['registration_date'] = (node) => registrationDate = node
        .getObjectValue<TokensPostRequestBodyAccountCompanyRegistrationDate>(
            TokensPostRequestBodyAccountCompanyRegistrationDate
                .createFromDiscriminatorValue);
    deserializerMap['registration_number'] =
        (node) => registrationNumber = node.getStringValue();
    deserializerMap['representative_declaration'] = (node) =>
        representativeDeclaration = node.getObjectValue<
                TokensPostRequestBodyAccountCompanyRepresentativeDeclaration>(
            TokensPostRequestBodyAccountCompanyRepresentativeDeclaration
                .createFromDiscriminatorValue);
    deserializerMap['structure'] = (node) => structure =
        node.getEnumValue<TokensPostRequestBodyAccountCompanyStructure>(
            (stringValue) => TokensPostRequestBodyAccountCompanyStructure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    deserializerMap['tax_id_registrar'] =
        (node) => taxIdRegistrar = node.getStringValue();
    deserializerMap['vat_id'] = (node) => vatId = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<TokensPostRequestBodyAccountCompanyVerification>(
            TokensPostRequestBodyAccountCompanyVerification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TokensPostRequestBodyAccountCompanyAddress>(
        'address', address);
    writer.writeObjectValue<TokensPostRequestBodyAccountCompanyAddressKana>(
        'address_kana', addressKana);
    writer.writeObjectValue<TokensPostRequestBodyAccountCompanyAddressKanji>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountCompanyDirectorshipDeclaration>(
        'directorship_declaration', directorshipDeclaration);
    writer.writeBoolValue('directors_provided', value: directorsProvided);
    writer.writeBoolValue('executives_provided', value: executivesProvided);
    writer.writeStringValue('export_license_id', exportLicenseId);
    writer.writeStringValue('export_purpose_code', exportPurposeCode);
    writer.writeStringValue('name', name);
    writer.writeStringValue('name_kana', nameKana);
    writer.writeStringValue('name_kanji', nameKanji);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountCompanyOwnershipDeclaration>(
        'ownership_declaration', ownershipDeclaration);
    writer.writeBoolValue('ownership_declaration_shown_and_signed',
        value: ownershipDeclarationShownAndSigned);
    writer.writeEnumValue<
            TokensPostRequestBodyAccountCompanyOwnershipExemptionReason>(
        'ownership_exemption_reason',
        ownershipExemptionReason,
        (e) => e?.value);
    writer.writeBoolValue('owners_provided', value: ownersProvided);
    writer.writeStringValue('phone', phone);
    writer
        .writeObjectValue<TokensPostRequestBodyAccountCompanyRegistrationDate>(
            'registration_date', registrationDate);
    writer.writeStringValue('registration_number', registrationNumber);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountCompanyRepresentativeDeclaration>(
        'representative_declaration', representativeDeclaration);
    writer.writeEnumValue<TokensPostRequestBodyAccountCompanyStructure>(
        'structure', structure, (e) => e?.value);
    writer.writeStringValue('tax_id', taxId);
    writer.writeStringValue('tax_id_registrar', taxIdRegistrar);
    writer.writeStringValue('vat_id', vatId);
    writer.writeObjectValue<TokensPostRequestBodyAccountCompanyVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
