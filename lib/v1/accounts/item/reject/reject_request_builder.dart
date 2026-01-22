// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/account.dart';
import '../../../../models/error.dart';
import './reject_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\reject
class RejectRequestBuilder extends BaseRequestBuilder<RejectRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RejectRequestBuilder clone() {
    return RejectRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RejectRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RejectRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}/reject",
            pathParameters);

  /// Instantiates a new [RejectRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RejectRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}/reject",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>With <a href="/connect">Connect</a>, you can reject accounts that you have flagged as suspicious.</p><p>Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> postAsync(RejectPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>With <a href="/connect">Connect</a>, you can reject accounts that you have flagged as suspicious.</p><p>Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RejectPostRequestBody body,
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
