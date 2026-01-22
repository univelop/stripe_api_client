// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './external_account.dart';
import './external_accounts_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\external_accounts\{id}
class ExternalAccountsItemRequestBuilder
    extends BaseRequestBuilder<ExternalAccountsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ExternalAccountsItemRequestBuilder clone() {
    return ExternalAccountsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ExternalAccountsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExternalAccountsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/external_accounts/{id}",
            pathParameters);

  /// Instantiates a new [ExternalAccountsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExternalAccountsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/external_accounts/{id}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Updates the metadata, account holder name, account holder type of a bank account belonging toa connected account and optionally sets it as the default for its currency. Other bank accountdetails are not editable by design.</p><p>You can only update bank accounts when <a href="/api/accounts/object#account_object-controller-requirement_collection">account.controller.requirement_collection</a> is <code>application</code>, which includes <a href="/connect/custom-accounts">Custom accounts</a>.</p><p>You can re-enable a disabled bank account by performing an update call without providing anyarguments or changes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ExternalAccount?> postAsync(ExternalAccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ExternalAccount>(requestInfo,
        ExternalAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the metadata, account holder name, account holder type of a bank account belonging toa connected account and optionally sets it as the default for its currency. Other bank accountdetails are not editable by design.</p><p>You can only update bank accounts when <a href="/api/accounts/object#account_object-controller-requirement_collection">account.controller.requirement_collection</a> is <code>application</code>, which includes <a href="/connect/custom-accounts">Custom accounts</a>.</p><p>You can re-enable a disabled bank account by performing an update call without providing anyarguments or changes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      ExternalAccountsPostRequestBody body,
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
