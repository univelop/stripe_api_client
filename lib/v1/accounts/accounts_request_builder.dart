// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/account.dart';
import '../../models/error.dart';
import './accounts_get_request_body.dart';
import './accounts_get_response.dart';
import './accounts_post_request_body.dart';
import './accounts_request_builder_get_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts
class AccountsRequestBuilder
    extends BaseRequestBuilder<AccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.accounts.item collection
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
            "{+baseurl}/v1/accounts{?created*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [AccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts{?created*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of accounts connected to your platform via <a href="/docs/connect">Connect</a>. If you’re not a platform, the list is empty.</p>
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

  /// <p>With <a href="/docs/connect">Connect</a>, you can create Stripe accounts for your users.To do this, you’ll first need to <a href="https://dashboard.stripe.com/account/applications/settings">register your platform</a>.</p><p>If you’ve already collected information for your connected accounts, you <a href="/docs/connect/best-practices#onboarding">can prefill that information</a> whencreating the account. Connect Onboarding won’t ask for the prefilled information during account onboarding.You can prefill any information on the account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> postAsync(AccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of accounts connected to your platform via <a href="/docs/connect">Connect</a>. If you’re not a platform, the list is empty.</p>
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

  /// <p>With <a href="/docs/connect">Connect</a>, you can create Stripe accounts for your users.To do this, you’ll first need to <a href="https://dashboard.stripe.com/account/applications/settings">register your platform</a>.</p><p>If you’ve already collected information for your connected accounts, you <a href="/docs/connect/best-practices#onboarding">can prefill that information</a> whencreating the account. Connect Onboarding won’t ask for the prefilled information during account onboarding.You can prefill any information on the account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(AccountsPostRequestBody body,
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
