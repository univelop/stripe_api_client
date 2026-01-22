// ignore_for_file: type=lint
/// auto generated
enum FinancialAccountPendingFeatures {
  cardIssuing('card_issuing'),
  depositInsurance('deposit_insurance'),
  financialAddressesaba('financial_addresses.aba'),
  financialAddressesabaforwarding('financial_addresses.aba.forwarding'),
  inboundTransfersach('inbound_transfers.ach'),
  intraStripeFlows('intra_stripe_flows'),
  outboundPaymentsach('outbound_payments.ach'),
  outboundPaymentsusDomesticWire('outbound_payments.us_domestic_wire'),
  outboundTransfersach('outbound_transfers.ach'),
  outboundTransfersusDomesticWire('outbound_transfers.us_domestic_wire'),
  remoteDepositCapture('remote_deposit_capture');

  const FinancialAccountPendingFeatures(this.value);
  final String value;
}
