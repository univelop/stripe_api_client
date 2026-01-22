// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './search_get_request_body.dart';
import './search_get_response.dart';
import './search_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\products\search
class SearchRequestBuilder extends BaseRequestBuilder<SearchRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  SearchRequestBuilder clone() {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SearchRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SearchRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/products/search?query={query}{&expand*,limit*,page*}",
            pathParameters);

  /// Instantiates a new [SearchRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SearchRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/products/search?query={query}{&expand*,limit*,page*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Search for products you’ve previously created using Stripe’s <a href="/docs/search#search-query-language">Search Query Language</a>.Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operatingconditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be upto an hour behind during outages. Search functionality is not available to merchants in India.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SearchGetResponse?> getAsync(SearchGetRequestBody body,
      [void Function(
              RequestConfiguration<SearchRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SearchGetResponse>(requestInfo,
        SearchGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Search for products you’ve previously created using Stripe’s <a href="/docs/search#search-query-language">Search Query Language</a>.Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operatingconditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be upto an hour behind during outages. Search functionality is not available to merchants in India.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SearchGetRequestBody body,
      [void Function(
              RequestConfiguration<SearchRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SearchRequestBuilderGetQueryParameters>(
        requestConfiguration, () => SearchRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
