// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/account_link.dart';
import '../../models/error.dart';
import './account_links_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\account_links
class AccountLinksRequestBuilder
    extends BaseRequestBuilder<AccountLinksRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  AccountLinksRequestBuilder clone() {
    return AccountLinksRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AccountLinksRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountLinksRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/account_links", pathParameters);

  /// Instantiates a new [AccountLinksRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AccountLinksRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/account_links",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<AccountLink?> postAsync(AccountLinksPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<AccountLink>(
        requestInfo, AccountLink.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(AccountLinksPostRequestBody body,
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
