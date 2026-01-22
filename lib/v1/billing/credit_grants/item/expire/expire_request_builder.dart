// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/billing/credit_grant.dart';
import '../../../../../models/error.dart';
import './expire_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\credit_grants\{id}\expire
class ExpireRequestBuilder extends BaseRequestBuilder<ExpireRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ExpireRequestBuilder clone() {
    return ExpireRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ExpireRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExpireRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/credit_grants/{id}/expire",
            pathParameters);

  /// Instantiates a new [ExpireRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExpireRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/credit_grants/{id}/expire",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Expires a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditGrant?> postAsync(ExpirePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditGrant>(
        requestInfo, CreditGrant.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Expires a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ExpirePostRequestBody body,
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
