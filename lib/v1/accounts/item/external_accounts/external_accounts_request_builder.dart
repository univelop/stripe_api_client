// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './external_account.dart';
import './external_accounts_get_request_body.dart';
import './external_accounts_get_response.dart';
import './external_accounts_post_request_body.dart';
import './external_accounts_request_builder_get_query_parameters.dart';
import './item/external_accounts_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\external_accounts
class ExternalAccountsRequestBuilder
    extends BaseRequestBuilder<ExternalAccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.accounts.item.external_accounts.item collection
  ///  [id] Unique identifier for the external account to be deleted.
  ExternalAccountsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return ExternalAccountsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ExternalAccountsRequestBuilder clone() {
    return ExternalAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ExternalAccountsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExternalAccountsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/external_accounts{?ending_before*,expand*,limit*,object*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ExternalAccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExternalAccountsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/external_accounts{?ending_before*,expand*,limit*,object*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List external accounts for an account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ExternalAccountsGetResponse?> getAsync(
      External_accountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ExternalAccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ExternalAccountsGetResponse>(requestInfo,
        ExternalAccountsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Create an external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<External_account?> postAsync(External_accountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<External_account>(requestInfo,
        External_account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>List external accounts for an account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      External_accountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ExternalAccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ExternalAccountsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ExternalAccountsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Create an external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      External_accountsPostRequestBody body,
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
