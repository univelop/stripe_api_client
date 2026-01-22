// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/treasury/financial_account.dart';
import './financial_accounts_get_request_body.dart';
import './financial_accounts_get_response.dart';
import './financial_accounts_post_request_body.dart';
import './financial_accounts_request_builder_get_query_parameters.dart';
import './item/with_financial_account_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\financial_accounts
class FinancialAccountsRequestBuilder
    extends BaseRequestBuilder<FinancialAccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.financial_accounts.item collection
  ///  [financialAccount] Unique identifier of the item
  WithFinancialAccountItemRequestBuilder byFinancialAccount(
      String financialAccount) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('financial_account', () => financialAccount);
    return WithFinancialAccountItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FinancialAccountsRequestBuilder clone() {
    return FinancialAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FinancialAccountsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FinancialAccountsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/financial_accounts{?created*,ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [FinancialAccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FinancialAccountsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/financial_accounts{?created*,ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of FinancialAccounts.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FinancialAccountsGetResponse?> getAsync(
      FinancialAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  FinancialAccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FinancialAccountsGetResponse>(
        requestInfo,
        FinancialAccountsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates a new FinancialAccount. Each connected account can have up to three FinancialAccounts by default.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FinancialAccount?> postAsync(FinancialAccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FinancialAccount>(requestInfo,
        FinancialAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of FinancialAccounts.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      FinancialAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  FinancialAccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FinancialAccountsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => FinancialAccountsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new FinancialAccount. Each connected account can have up to three FinancialAccounts by default.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      FinancialAccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
