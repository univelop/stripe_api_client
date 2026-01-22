// ignore_for_file: type=lint
/// auto generated
///  The status of the card issuing capability of the account, or whether you can use Issuing to distribute funds on cards
enum AccountCapabilitiesCardIssuing {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesCardIssuing(this.value);
  final String value;
}
