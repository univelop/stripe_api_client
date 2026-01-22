// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/issuing/authorization.dart';
import './approve_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\authorizations\{authorization}\approve
class ApproveRequestBuilder extends BaseRequestBuilder<ApproveRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ApproveRequestBuilder clone() {
    return ApproveRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ApproveRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApproveRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/authorizations/{authorization}/approve",
            pathParameters);

  /// Instantiates a new [ApproveRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApproveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/authorizations/{authorization}/approve",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>[Deprecated] Approves a pending Issuing <code>Authorization</code> object. This request should be made within the timeout window of the <a href="/docs/issuing/controls/real-time-authorizations">real-time authorization</a> flow. This method is deprecated. Instead, <a href="/docs/issuing/controls/real-time-authorizations#authorization-handling">respond directly to the webhook request to approve an authorization</a>.</p>
  /// @deprecated
  ///
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  @Deprecated("")
  Future<Authorization?> postAsync(ApprovePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Authorization>(
        requestInfo, Authorization.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>[Deprecated] Approves a pending Issuing <code>Authorization</code> object. This request should be made within the timeout window of the <a href="/docs/issuing/controls/real-time-authorizations">real-time authorization</a> flow. This method is deprecated. Instead, <a href="/docs/issuing/controls/real-time-authorizations#authorization-handling">respond directly to the webhook request to approve an authorization</a>.</p>
  /// @deprecated
  ///
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  @Deprecated("")
  RequestInformation toPostRequestInformation(ApprovePostRequestBody body,
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
