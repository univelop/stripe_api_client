// ignore_for_file: type=lint
/// auto generated
///  The entity that requested the exemption, either the acquiring merchant or the Issuing user.
enum IssuingAuthorizationAuthenticationExemptionClaimedBy {
  acquirer('acquirer'),
  issuer('issuer');

  const IssuingAuthorizationAuthenticationExemptionClaimedBy(this.value);
  final String value;
}
