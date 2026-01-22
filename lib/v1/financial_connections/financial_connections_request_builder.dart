// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts/accounts_request_builder.dart';
import './sessions/sessions_request_builder.dart';
import './transactions/transactions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections
class FinancialConnectionsRequestBuilder
    extends BaseRequestBuilder<FinancialConnectionsRequestBuilder> {
  ///  The accounts property
  AccountsRequestBuilder get accounts {
    return AccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The sessions property
  SessionsRequestBuilder get sessions {
    return SessionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The transactions property
  TransactionsRequestBuilder get transactions {
    return TransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FinancialConnectionsRequestBuilder clone() {
    return FinancialConnectionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FinancialConnectionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FinancialConnectionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/financial_connections",
            pathParameters);

  /// Instantiates a new [FinancialConnectionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FinancialConnectionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/financial_connections",
            {RequestInformation.rawUrlKey: rawUrl});
}
