// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import './bank_accounts_delete_request_body.dart';
import './bank_accounts_get_request_body.dart';
import './bank_accounts_item_request_builder_get_query_parameters.dart';
import './bank_accounts_post_request_body.dart';
import './deleted_external_account.dart';
import './external_account.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\bank_accounts\{id}
class BankAccountsItemRequestBuilder
    extends BaseRequestBuilder<BankAccountsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  BankAccountsItemRequestBuilder clone() {
    return BankAccountsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BankAccountsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BankAccountsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/bank_accounts/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [BankAccountsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BankAccountsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/bank_accounts/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Delete a specified external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedExternalAccount?> deleteAsync(
      BankAccountsDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedExternalAccount>(requestInfo,
        DeletedExternalAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a specified external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ExternalAccount?> getAsync(BankAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BankAccountsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ExternalAccount>(requestInfo,
        ExternalAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the metadata, account holder name, account holder type of a bank account belonging toa connected account and optionally sets it as the default for its currency. Other bank accountdetails are not editable by design.</p><p>You can only update bank accounts when <a href="/api/accounts/object#account_object-controller-requirement_collection">account.controller.requirement_collection</a> is <code>application</code>, which includes <a href="/connect/custom-accounts">Custom accounts</a>.</p><p>You can re-enable a disabled bank account by performing an update call without providing anyarguments or changes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ExternalAccount?> postAsync(BankAccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ExternalAccount>(requestInfo,
        ExternalAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Delete a specified external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      BankAccountsDeleteRequestBody body,
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

  /// <p>Retrieve a specified external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(BankAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BankAccountsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<BankAccountsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => BankAccountsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the metadata, account holder name, account holder type of a bank account belonging toa connected account and optionally sets it as the default for its currency. Other bank accountdetails are not editable by design.</p><p>You can only update bank accounts when <a href="/api/accounts/object#account_object-controller-requirement_collection">account.controller.requirement_collection</a> is <code>application</code>, which includes <a href="/connect/custom-accounts">Custom accounts</a>.</p><p>You can re-enable a disabled bank account by performing an update call without providing anyarguments or changes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(BankAccountsPostRequestBody body,
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
