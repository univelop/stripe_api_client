// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './bank_accounts_post_request_body.dart';
import './external_account.dart';
import './item/bank_accounts_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\bank_accounts
class BankAccountsRequestBuilder
    extends BaseRequestBuilder<BankAccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.accounts.item.bank_accounts.item collection
  ///  [id] Unique identifier for the external account to be deleted.
  BankAccountsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return BankAccountsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  BankAccountsRequestBuilder clone() {
    return BankAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BankAccountsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BankAccountsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}/bank_accounts",
            pathParameters);

  /// Instantiates a new [BankAccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BankAccountsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}/bank_accounts",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Create an external account for a given account.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<External_account?> postAsync(BankAccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<External_account>(requestInfo,
        External_account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Create an external account for a given account.</p>
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
