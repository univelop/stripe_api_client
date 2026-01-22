// ignore_for_file: type=lint
/// auto generated
///  The funding method type used to fund the customer balance. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
enum CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType {
  euBankTransfer('eu_bank_transfer'),
  gbBankTransfer('gb_bank_transfer'),
  jpBankTransfer('jp_bank_transfer'),
  mxBankTransfer('mx_bank_transfer'),
  usBankTransfer('us_bank_transfer');

  const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType(
      this.value);
  final String value;
}
