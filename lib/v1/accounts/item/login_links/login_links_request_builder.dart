// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/login_link.dart';
import './login_links_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\login_links
class LoginLinksRequestBuilder
    extends BaseRequestBuilder<LoginLinksRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  LoginLinksRequestBuilder clone() {
    return LoginLinksRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [LoginLinksRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LoginLinksRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}/login_links",
            pathParameters);

  /// Instantiates a new [LoginLinksRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LoginLinksRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/accounts/{account}/login_links",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a login link for a connected account to access the Express Dashboard.</p><p><strong>You can only create login links for accounts that use the <a href="/connect/express-dashboard">Express Dashboard</a> and are connected to your platform</strong>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<LoginLink?> postAsync(LoginLinksPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<LoginLink>(
        requestInfo, LoginLink.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a login link for a connected account to access the Express Dashboard.</p><p><strong>You can only create login links for accounts that use the <a href="/connect/express-dashboard">Express Dashboard</a> and are connected to your platform</strong>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(LoginLinksPostRequestBody body,
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
