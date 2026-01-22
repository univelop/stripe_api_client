// ignore_for_file: type=lint
/// auto generated
///  The status of the card payments capability of the account, or whether the account can directly process credit and debit card charges.
enum AccountCapabilitiesCardPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesCardPayments(this.value);
  final String value;
}
