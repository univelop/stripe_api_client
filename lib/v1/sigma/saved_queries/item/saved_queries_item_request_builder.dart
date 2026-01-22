// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/sigma/sigma_api_query.dart';
import './saved_queries_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sigma\saved_queries\{id}
class SavedQueriesItemRequestBuilder
    extends BaseRequestBuilder<SavedQueriesItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  SavedQueriesItemRequestBuilder clone() {
    return SavedQueriesItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SavedQueriesItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SavedQueriesItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sigma/saved_queries/{id}",
            pathParameters);

  /// Instantiates a new [SavedQueriesItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SavedQueriesItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sigma/saved_queries/{id}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Update an existing Sigma query that previously exists</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SigmaApiQuery?> postAsync(SavedQueriesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SigmaApiQuery>(
        requestInfo, SigmaApiQuery.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Update an existing Sigma query that previously exists</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SavedQueriesPostRequestBody body,
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
