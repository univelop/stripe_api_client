// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/account_session.dart';
import '../../models/error.dart';
import './account_sessions_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\account_sessions
class AccountSessionsRequestBuilder
    extends BaseRequestBuilder<AccountSessionsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  AccountSessionsRequestBuilder clone() {
    return AccountSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AccountSessionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountSessionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/account_sessions", pathParameters);

  /// Instantiates a new [AccountSessionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountSessionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/account_sessions",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<AccountSession?> postAsync(AccountSessionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<AccountSession>(
        requestInfo, AccountSession.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      AccountSessionsPostRequestBody body,
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
