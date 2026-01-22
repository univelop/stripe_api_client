// ignore_for_file: type=lint
/// auto generated
///  When the mandate is revoked on the Bacs network this field displays the reason for the revocation.
enum MandateBacsDebitRevocationReason {
  accountClosed('account_closed'),
  bankAccountRestricted('bank_account_restricted'),
  bankOwnershipChanged('bank_ownership_changed'),
  couldNotProcess('could_not_process'),
  debitNotAuthorized('debit_not_authorized');

  const MandateBacsDebitRevocationReason(this.value);
  final String value;
}
