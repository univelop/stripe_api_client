// ignore_for_file: type=lint
/// auto generated
///  The category identifying the legal structure of the company or legal entity. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`. See [Business structure](https://docs.stripe.com/connect/identity-verification#business-structure) for more details.
enum LegalEntityCompanyStructure {
  freeZoneEstablishment('free_zone_establishment'),
  freeZoneLlc('free_zone_llc'),
  governmentInstrumentality('government_instrumentality'),
  governmentalUnit('governmental_unit'),
  incorporatedNonProfit('incorporated_non_profit'),
  incorporatedPartnership('incorporated_partnership'),
  limitedLiabilityPartnership('limited_liability_partnership'),
  llc('llc'),
  multiMemberLlc('multi_member_llc'),
  privateCompany('private_company'),
  privateCorporation('private_corporation'),
  privatePartnership('private_partnership'),
  publicCompany('public_company'),
  publicCorporation('public_corporation'),
  publicPartnership('public_partnership'),
  registeredCharity('registered_charity'),
  singleMemberLlc('single_member_llc'),
  soleEstablishment('sole_establishment'),
  soleProprietorship('sole_proprietorship'),
  taxExemptGovernmentInstrumentality('tax_exempt_government_instrumentality'),
  unincorporatedAssociation('unincorporated_association'),
  unincorporatedNonProfit('unincorporated_non_profit'),
  unincorporatedPartnership('unincorporated_partnership');

  const LegalEntityCompanyStructure(this.value);
  final String value;
}
