// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/account.dart';
import '../../../models/deleted_account.dart';
import '../../../models/error.dart';
import './bank_accounts/bank_accounts_request_builder.dart';
import './capabilities/capabilities_request_builder.dart';
import './external_accounts/external_accounts_request_builder.dart';
import './login_links/login_links_request_builder.dart';
import './people/people_request_builder.dart';
import './persons/persons_request_builder.dart';
import './reject/reject_request_builder.dart';
import './with_account_delete_request_body.dart';
import './with_account_get_request_body.dart';
import './with_account_item_request_builder_get_query_parameters.dart';
import './with_account_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}
class WithAccountItemRequestBuilder
    extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
  ///  The bank_accounts property
  BankAccountsRequestBuilder get bankAccounts {
    return BankAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The capabilities property
  CapabilitiesRequestBuilder get capabilities {
    return CapabilitiesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The external_accounts property
  ExternalAccountsRequestBuilder get externalAccounts {
    return ExternalAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The login_links property
  LoginLinksRequestBuilder get loginLinks {
    return LoginLinksRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The people property
  PeopleRequestBuilder get people {
    return PeopleRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The persons property
  PersonsRequestBuilder get persons {
    return PersonsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The reject property
  RejectRequestBuilder get reject {
    return RejectRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithAccountItemRequestBuilder clone() {
    return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAccountItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAccountItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>With <a href="/connect">Connect</a>, you can delete accounts you manage.</p><p>Test-mode accounts can be deleted at any time.</p><p>Live-mode accounts that have access to the standard dashboard and Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. All other Live-mode accounts, can be deleted when all <a href="/api/balance/balance_object">balances</a> are zero.</p><p>If you want to delete your own account, use the <a href="https://dashboard.stripe.com/settings/account">account information tab in your account settings</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedAccount?> deleteAsync(WithAccountDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedAccount>(
        requestInfo, DeletedAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> getAsync(WithAccountGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithAccountItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a <a href="/connect/accounts">connected account</a> by setting the values of the parameters passed. Any parameters not provided areleft unchanged.</p><p>For accounts where <a href="/api/accounts/object#account_object-controller-requirement_collection">controller.requirement_collection</a>is <code>application</code>, which includes Custom accounts, you can update any information on the account.</p><p>For accounts where <a href="/api/accounts/object#account_object-controller-requirement_collection">controller.requirement_collection</a>is <code>stripe</code>, which includes Standard and Express accounts, you can update all information until you createan <a href="/api/account_links">Account Link</a> or <a href="/api/account_sessions">Account Session</a> to start Connect onboarding,after which some properties can no longer be updated.</p><p>To update your own account, use the <a href="https://dashboard.stripe.com/settings/account">Dashboard</a>. Refer to our<a href="/docs/connect/updating-accounts">Connect</a> documentation to learn more about updating accounts.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> postAsync(WithAccountPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>With <a href="/connect">Connect</a>, you can delete accounts you manage.</p><p>Test-mode accounts can be deleted at any time.</p><p>Live-mode accounts that have access to the standard dashboard and Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. All other Live-mode accounts, can be deleted when all <a href="/api/balance/balance_object">balances</a> are zero.</p><p>If you want to delete your own account, use the <a href="https://dashboard.stripe.com/settings/account">account information tab in your account settings</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithAccountDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves the details of an account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithAccountGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithAccountItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithAccountItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a <a href="/connect/accounts">connected account</a> by setting the values of the parameters passed. Any parameters not provided areleft unchanged.</p><p>For accounts where <a href="/api/accounts/object#account_object-controller-requirement_collection">controller.requirement_collection</a>is <code>application</code>, which includes Custom accounts, you can update any information on the account.</p><p>For accounts where <a href="/api/accounts/object#account_object-controller-requirement_collection">controller.requirement_collection</a>is <code>stripe</code>, which includes Standard and Express accounts, you can update all information until you createan <a href="/api/account_links">Account Link</a> or <a href="/api/account_sessions">Account Session</a> to start Connect onboarding,after which some properties can no longer be updated.</p><p>To update your own account, use the <a href="https://dashboard.stripe.com/settings/account">Dashboard</a>. Refer to our<a href="/docs/connect/updating-accounts">Connect</a> documentation to learn more about updating accounts.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithAccountPostRequestBody body,
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
