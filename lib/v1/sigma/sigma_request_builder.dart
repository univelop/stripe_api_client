// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './saved_queries/saved_queries_request_builder.dart';
import './scheduled_query_runs/scheduled_query_runs_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sigma
class SigmaRequestBuilder extends BaseRequestBuilder<SigmaRequestBuilder> {
  ///  The saved_queries property
  SavedQueriesRequestBuilder get savedQueries {
    return SavedQueriesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The scheduled_query_runs property
  ScheduledQueryRunsRequestBuilder get scheduledQueryRuns {
    return ScheduledQueryRunsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SigmaRequestBuilder clone() {
    return SigmaRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SigmaRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SigmaRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sigma", pathParameters);

  /// Instantiates a new [SigmaRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SigmaRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sigma",
            {RequestInformation.rawUrlKey: rawUrl});
}
