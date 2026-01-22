// ignore_for_file: type=lint
/// auto generated
enum IssuingCardholderRequirementsPastDue {
  companytaxId('company.tax_id'),
  individualcardIssuinguserTermsAcceptancedate(
      'individual.card_issuing.user_terms_acceptance.date'),
  individualcardIssuinguserTermsAcceptanceip(
      'individual.card_issuing.user_terms_acceptance.ip'),
  individualDobDay('individual.dob.day'),
  individualDobMonth('individual.dob.month'),
  individualDobYear('individual.dob.year'),
  individualfirstName('individual.first_name'),
  individuallastName('individual.last_name'),
  individualVerificationDocument('individual.verification.document');

  const IssuingCardholderRequirementsPastDue(this.value);
  final String value;
}
