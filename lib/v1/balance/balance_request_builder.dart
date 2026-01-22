// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/balance.dart';
import '../../models/error.dart';
import './balance_get_request_body.dart';
import './balance_request_builder_get_query_parameters.dart';
import './history/history_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\balance
class BalanceRequestBuilder extends BaseRequestBuilder<BalanceRequestBuilder> {
  ///  The history property
  HistoryRequestBuilder get history {
    return HistoryRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  BalanceRequestBuilder clone() {
    return BalanceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BalanceRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter, "{+baseurl}/v1/balance{?expand*}", pathParameters);

  /// Instantiates a new [BalanceRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/balance{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the current account balance, based on the authentication that was used to make the request. For a sample request, see <a href="/docs/connect/account-balances#accounting-for-negative-balances">Accounting for negative balances</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Balance?> getAsync(BalanceGetRequestBody body,
      [void Function(
              RequestConfiguration<BalanceRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Balance>(
        requestInfo, Balance.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the current account balance, based on the authentication that was used to make the request. For a sample request, see <a href="/docs/connect/account-balances#accounting-for-negative-balances">Accounting for negative balances</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(BalanceGetRequestBody body,
      [void Function(
              RequestConfiguration<BalanceRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<BalanceRequestBuilderGetQueryParameters>(
        requestConfiguration, () => BalanceRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
