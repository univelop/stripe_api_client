// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/financial_connections/account.dart';
import './refresh_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\linked_accounts\{account}\refresh
class RefreshRequestBuilder extends BaseRequestBuilder<RefreshRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RefreshRequestBuilder clone() {
    return RefreshRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RefreshRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefreshRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/linked_accounts/{account}/refresh",
            pathParameters);

  /// Instantiates a new [RefreshRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefreshRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/linked_accounts/{account}/refresh",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Refreshes the data associated with a Financial Connections <code>Account</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> postAsync(RefreshPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Refreshes the data associated with a Financial Connections <code>Account</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RefreshPostRequestBody body,
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
