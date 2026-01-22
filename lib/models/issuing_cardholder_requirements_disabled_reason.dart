// ignore_for_file: type=lint
/// auto generated
///  If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
enum IssuingCardholderRequirementsDisabledReason {
  listed('listed'),
  rejectedListed('rejected.listed'),
  requirementspastDue('requirements.past_due'),
  underReview('under_review');

  const IssuingCardholderRequirementsDisabledReason(this.value);
  final String value;
}
