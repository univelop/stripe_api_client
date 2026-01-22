// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './item/with_account_item_request_builder.dart';
import './linked_accounts_get_request_body.dart';
import './linked_accounts_get_response.dart';
import './linked_accounts_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\linked_accounts
class LinkedAccountsRequestBuilder
    extends BaseRequestBuilder<LinkedAccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.linked_accounts.item collection
  ///  [account] Unique identifier of the item
  WithAccountItemRequestBuilder byAccount(String account) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('account', () => account);
    return WithAccountItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  LinkedAccountsRequestBuilder clone() {
    return LinkedAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [LinkedAccountsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LinkedAccountsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/linked_accounts{?account_holder*,ending_before*,expand*,limit*,session*,starting_after*}",
            pathParameters);

  /// Instantiates a new [LinkedAccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LinkedAccountsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/linked_accounts{?account_holder*,ending_before*,expand*,limit*,session*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Financial Connections <code>Account</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<LinkedAccountsGetResponse?> getAsync(LinkedAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  LinkedAccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<LinkedAccountsGetResponse>(requestInfo,
        LinkedAccountsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Financial Connections <code>Account</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(LinkedAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  LinkedAccountsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<LinkedAccountsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => LinkedAccountsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
