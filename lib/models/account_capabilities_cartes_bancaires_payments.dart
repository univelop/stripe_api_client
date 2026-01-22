// ignore_for_file: type=lint
/// auto generated
///  The status of the Cartes Bancaires payments capability of the account, or whether the account can directly process Cartes Bancaires card charges in EUR currency.
enum AccountCapabilitiesCartesBancairesPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesCartesBancairesPayments(this.value);
  final String value;
}
