// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './accounts_get_request_body.dart';
import './accounts_get_response.dart';
import './accounts_request_builder_get_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections\accounts
class AccountsRequestBuilder
    extends BaseRequestBuilder<AccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.financial_connections.accounts.item collection
  ///  [account] Unique identifier of the item
  WithAccountItemRequestBuilder byAccount(String account) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('account', () => account);
    return WithAccountItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  AccountsRequestBuilder clone() {
    return AccountsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AccountsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/accounts{?account_holder*,ending_before*,expand*,limit*,session*,starting_after*}",
            pathParameters);

  /// Instantiates a new [AccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/accounts{?account_holder*,ending_before*,expand*,limit*,session*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Financial Connections <code>Account</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<AccountsGetResponse?> getAsync(AccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<AccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<AccountsGetResponse>(requestInfo,
        AccountsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Financial Connections <code>Account</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(AccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<AccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<AccountsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => AccountsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
