// ignore_for_file: type=lint
/// auto generated
///  The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
enum PaymentMethodOptionsCustomerBalanceBankTransferType {
  euBankTransfer('eu_bank_transfer'),
  gbBankTransfer('gb_bank_transfer'),
  jpBankTransfer('jp_bank_transfer'),
  mxBankTransfer('mx_bank_transfer'),
  usBankTransfer('us_bank_transfer');

  const PaymentMethodOptionsCustomerBalanceBankTransferType(this.value);
  final String value;
}
