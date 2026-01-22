// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './fund_cash_balance/fund_cash_balance_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\customers\{customer}
class WithCustomerItemRequestBuilder
    extends BaseRequestBuilder<WithCustomerItemRequestBuilder> {
  ///  The fund_cash_balance property
  FundCashBalanceRequestBuilder get fundCashBalance {
    return FundCashBalanceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithCustomerItemRequestBuilder clone() {
    return WithCustomerItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCustomerItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCustomerItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/customers/{customer}",
            pathParameters);

  /// Instantiates a new [WithCustomerItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCustomerItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/customers/{customer}",
            {RequestInformation.rawUrlKey: rawUrl});
}
