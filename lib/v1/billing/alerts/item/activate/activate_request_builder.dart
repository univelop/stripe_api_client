// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/billing/alert.dart';
import '../../../../../models/error.dart';
import './activate_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\alerts\{id}\activate
class ActivateRequestBuilder
    extends BaseRequestBuilder<ActivateRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ActivateRequestBuilder clone() {
    return ActivateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ActivateRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ActivateRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/alerts/{id}/activate",
            pathParameters);

  /// Instantiates a new [ActivateRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ActivateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/alerts/{id}/activate",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Reactivates this alert, allowing it to trigger again.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Alert?> postAsync(ActivatePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Alert>(
        requestInfo, Alert.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Reactivates this alert, allowing it to trigger again.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ActivatePostRequestBody body,
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
