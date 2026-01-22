// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/billing/alert.dart';
import '../../../../../models/error.dart';
import './archive_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\alerts\{id}\archive
class ArchiveRequestBuilder extends BaseRequestBuilder<ArchiveRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ArchiveRequestBuilder clone() {
    return ArchiveRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ArchiveRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ArchiveRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/alerts/{id}/archive",
            pathParameters);

  /// Instantiates a new [ArchiveRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ArchiveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/alerts/{id}/archive",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Archives this alert, removing it from the list view and APIs. This is non-reversible.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Alert?> postAsync(ArchivePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Alert>(
        requestInfo, Alert.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Archives this alert, removing it from the list view and APIs. This is non-reversible.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ArchivePostRequestBody body,
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
