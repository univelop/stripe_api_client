// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/financial_connections/account.dart';
import './unsubscribe_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections\accounts\{account}\unsubscribe
class UnsubscribeRequestBuilder
    extends BaseRequestBuilder<UnsubscribeRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  UnsubscribeRequestBuilder clone() {
    return UnsubscribeRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [UnsubscribeRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  UnsubscribeRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/accounts/{account}/unsubscribe",
            pathParameters);

  /// Instantiates a new [UnsubscribeRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  UnsubscribeRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/accounts/{account}/unsubscribe",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Unsubscribes from periodic refreshes of data associated with a Financial Connections <code>Account</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> postAsync(UnsubscribePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Unsubscribes from periodic refreshes of data associated with a Financial Connections <code>Account</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(UnsubscribePostRequestBody body,
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
