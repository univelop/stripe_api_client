// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './legal_entity_company_ownership_exemption_reason.dart';
import './legal_entity_company_structure.dart';
import './legal_entity_company_verification.dart';
import './legal_entity_directorship_declaration.dart';
import './legal_entity_japan_address.dart';
import './legal_entity_registration_date.dart';
import './legal_entity_representative_declaration.dart';
import './legal_entity_ubo_declaration.dart';

/// auto generated
class LegalEntityCompany implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  Address? address;

  ///  The Kana variation of the company's primary address (Japan only).
  LegalEntityJapanAddress? addressKana;

  ///  The Kanji variation of the company's primary address (Japan only).
  LegalEntityJapanAddress? addressKanji;

  ///  This hash is used to attest that the director information provided to Stripe is both current and correct.
  LegalEntityDirectorshipDeclaration? directorshipDeclaration;

  ///  Whether the company's directors have been provided. This Boolean will be `true` if you've manually indicated that all directors are provided via [the `directors_provided` parameter](https://docs.stripe.com/api/accounts/update#update_account-company-directors_provided).
  bool? directorsProvided;

  ///  Whether the company's executives have been provided. This Boolean will be `true` if you've manually indicated that all executives are provided via [the `executives_provided` parameter](https://docs.stripe.com/api/accounts/update#update_account-company-executives_provided), or if Stripe determined that sufficient executives were provided.
  bool? executivesProvided;

  ///  The export license ID number of the company, also referred as Import Export Code (India only).
  String? exportLicenseId;

  ///  The purpose code to use for export transactions (India only).
  String? exportPurposeCode;

  ///  The company's legal name. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? name;

  ///  The Kana variation of the company's legal name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? nameKana;

  ///  The Kanji variation of the company's legal name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
  String? nameKanji;

  ///  This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
  LegalEntityUboDeclaration? ownershipDeclaration;

  ///  This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
  LegalEntityCompanyOwnershipExemptionReason? ownershipExemptionReason;

  ///  Whether the company's owners have been provided. This Boolean will be `true` if you've manually indicated that all owners are provided via [the `owners_provided` parameter](https://docs.stripe.com/api/accounts/update#update_account-company-owners_provided), or if Stripe determined that sufficient owners were provided. Stripe determines ownership requirements using both the number of owners provided and their total percent ownership (calculated by adding the `percent_ownership` of each owner together).
  bool? ownersProvided;

  ///  The company's phone number (used for verification).
  String? phone;

  ///  The registration_date property
  LegalEntityRegistrationDate? registrationDate;

  ///  This hash is used to attest that the representative is authorized to act as the representative of their legal entity.
  LegalEntityRepresentativeDeclaration? representativeDeclaration;

  ///  The category identifying the legal structure of the company or legal entity. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. See [Business structure](https://docs.stripe.com/connect/identity-verification#business-structure) for more details.
  LegalEntityCompanyStructure? structure;

  ///  Whether the company's business ID number was provided.
  bool? taxIdProvided;

  ///  The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
  String? taxIdRegistrar;

  ///  Whether the company's business VAT number was provided.
  bool? vatIdProvided;

  ///  Information on the verification state of the company.
  LegalEntityCompanyVerification? verification;

  /// Instantiates a new [LegalEntityCompany] and sets the default values.
  LegalEntityCompany() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LegalEntityCompany createFromDiscriminatorValue(ParseNode parseNode) {
    return LegalEntityCompany();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['address_kana'] = (node) => addressKana =
        node.getObjectValue<LegalEntityJapanAddress>(
            LegalEntityJapanAddress.createFromDiscriminatorValue);
    deserializerMap['address_kanji'] = (node) => addressKanji =
        node.getObjectValue<LegalEntityJapanAddress>(
            LegalEntityJapanAddress.createFromDiscriminatorValue);
    deserializerMap['directorship_declaration'] = (node) =>
        directorshipDeclaration = node.getObjectValue<
                LegalEntityDirectorshipDeclaration>(
            LegalEntityDirectorshipDeclaration.createFromDiscriminatorValue);
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
        node.getObjectValue<LegalEntityUboDeclaration>(
            LegalEntityUboDeclaration.createFromDiscriminatorValue);
    deserializerMap['ownership_exemption_reason'] = (node) =>
        ownershipExemptionReason =
            node.getEnumValue<LegalEntityCompanyOwnershipExemptionReason>(
                (stringValue) => LegalEntityCompanyOwnershipExemptionReason
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['owners_provided'] =
        (node) => ownersProvided = node.getBoolValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['registration_date'] = (node) => registrationDate =
        node.getObjectValue<LegalEntityRegistrationDate>(
            LegalEntityRegistrationDate.createFromDiscriminatorValue);
    deserializerMap['representative_declaration'] = (node) =>
        representativeDeclaration = node.getObjectValue<
                LegalEntityRepresentativeDeclaration>(
            LegalEntityRepresentativeDeclaration.createFromDiscriminatorValue);
    deserializerMap['structure'] = (node) => structure =
        node.getEnumValue<LegalEntityCompanyStructure>((stringValue) =>
            LegalEntityCompanyStructure.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_id_provided'] =
        (node) => taxIdProvided = node.getBoolValue();
    deserializerMap['tax_id_registrar'] =
        (node) => taxIdRegistrar = node.getStringValue();
    deserializerMap['vat_id_provided'] =
        (node) => vatIdProvided = node.getBoolValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<LegalEntityCompanyVerification>(
            LegalEntityCompanyVerification.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeObjectValue<LegalEntityJapanAddress>(
        'address_kana', addressKana);
    writer.writeObjectValue<LegalEntityJapanAddress>(
        'address_kanji', addressKanji);
    writer.writeObjectValue<LegalEntityDirectorshipDeclaration>(
        'directorship_declaration', directorshipDeclaration);
    writer.writeBoolValue('directors_provided', value: directorsProvided);
    writer.writeBoolValue('executives_provided', value: executivesProvided);
    writer.writeStringValue('export_license_id', exportLicenseId);
    writer.writeStringValue('export_purpose_code', exportPurposeCode);
    writer.writeStringValue('name', name);
    writer.writeStringValue('name_kana', nameKana);
    writer.writeStringValue('name_kanji', nameKanji);
    writer.writeObjectValue<LegalEntityUboDeclaration>(
        'ownership_declaration', ownershipDeclaration);
    writer.writeEnumValue<LegalEntityCompanyOwnershipExemptionReason>(
        'ownership_exemption_reason',
        ownershipExemptionReason,
        (e) => e?.value);
    writer.writeBoolValue('owners_provided', value: ownersProvided);
    writer.writeStringValue('phone', phone);
    writer.writeObjectValue<LegalEntityRegistrationDate>(
        'registration_date', registrationDate);
    writer.writeObjectValue<LegalEntityRepresentativeDeclaration>(
        'representative_declaration', representativeDeclaration);
    writer.writeEnumValue<LegalEntityCompanyStructure>(
        'structure', structure, (e) => e?.value);
    writer.writeBoolValue('tax_id_provided', value: taxIdProvided);
    writer.writeStringValue('tax_id_registrar', taxIdRegistrar);
    writer.writeBoolValue('vat_id_provided', value: vatIdProvided);
    writer.writeObjectValue<LegalEntityCompanyVerification>(
        'verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
