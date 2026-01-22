// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/source.dart';
import './item/with_source_item_request_builder.dart';
import './sources_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sources
class SourcesRequestBuilder extends BaseRequestBuilder<SourcesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.sources.item collection
  ///  [source] Unique identifier of the item
  WithSourceItemRequestBuilder bySource(String source) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('source', () => source);
    return WithSourceItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SourcesRequestBuilder clone() {
    return SourcesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SourcesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SourcesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sources", pathParameters);

  /// Instantiates a new [SourcesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SourcesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/sources",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a new source object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Source?> postAsync(SourcesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Source>(
        requestInfo, Source.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new source object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SourcesPostRequestBody body,
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
