// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/saved_queries_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sigma\saved_queries
class SavedQueriesRequestBuilder
    extends BaseRequestBuilder<SavedQueriesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.sigma.saved_queries.item collection
  ///  [id] The `id` of the saved query to update. This should be a valid `id` that was previously created.
  SavedQueriesItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return SavedQueriesItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SavedQueriesRequestBuilder clone() {
    return SavedQueriesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SavedQueriesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SavedQueriesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sigma/saved_queries",
            pathParameters);

  /// Instantiates a new [SavedQueriesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SavedQueriesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sigma/saved_queries",
            {RequestInformation.rawUrlKey: rawUrl});
}
