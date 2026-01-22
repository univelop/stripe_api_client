// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_reversals/credit_reversals_request_builder.dart';
import './debit_reversals/debit_reversals_request_builder.dart';
import './financial_accounts/financial_accounts_request_builder.dart';
import './inbound_transfers/inbound_transfers_request_builder.dart';
import './outbound_payments/outbound_payments_request_builder.dart';
import './outbound_transfers/outbound_transfers_request_builder.dart';
import './received_credits/received_credits_request_builder.dart';
import './received_debits/received_debits_request_builder.dart';
import './transaction_entries/transaction_entries_request_builder.dart';
import './transactions/transactions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury
class TreasuryRequestBuilder
    extends BaseRequestBuilder<TreasuryRequestBuilder> {
  ///  The credit_reversals property
  CreditReversalsRequestBuilder get creditReversals {
    return CreditReversalsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The debit_reversals property
  DebitReversalsRequestBuilder get debitReversals {
    return DebitReversalsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The financial_accounts property
  FinancialAccountsRequestBuilder get financialAccounts {
    return FinancialAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The inbound_transfers property
  InboundTransfersRequestBuilder get inboundTransfers {
    return InboundTransfersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The outbound_payments property
  OutboundPaymentsRequestBuilder get outboundPayments {
    return OutboundPaymentsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The outbound_transfers property
  OutboundTransfersRequestBuilder get outboundTransfers {
    return OutboundTransfersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The received_credits property
  ReceivedCreditsRequestBuilder get receivedCredits {
    return ReceivedCreditsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The received_debits property
  ReceivedDebitsRequestBuilder get receivedDebits {
    return ReceivedDebitsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The transaction_entries property
  TransactionEntriesRequestBuilder get transactionEntries {
    return TransactionEntriesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The transactions property
  TransactionsRequestBuilder get transactions {
    return TransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TreasuryRequestBuilder clone() {
    return TreasuryRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TreasuryRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TreasuryRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/treasury", pathParameters);

  /// Instantiates a new [TreasuryRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TreasuryRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/treasury",
            {RequestInformation.rawUrlKey: rawUrl});
}
