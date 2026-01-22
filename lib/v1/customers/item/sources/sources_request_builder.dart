// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './item/sources_item_request_builder.dart';
import './payment_source.dart';
import './sources_get_request_body.dart';
import './sources_get_response.dart';
import './sources_post_request_body.dart';
import './sources_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\sources
class SourcesRequestBuilder extends BaseRequestBuilder<SourcesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.sources.item collection
  ///  [id] Unique identifier of the item
  SourcesItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return SourcesItemRequestBuilder(urlTplParams, requestAdapter);
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
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/sources{?ending_before*,expand*,limit*,object*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SourcesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SourcesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/sources{?ending_before*,expand*,limit*,object*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List sources for a specified customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SourcesGetResponse?> getAsync(SourcesGetRequestBody body,
      [void Function(
              RequestConfiguration<SourcesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SourcesGetResponse>(requestInfo,
        SourcesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>When you create a new credit card, you must specify a customer or recipient on which to create it.</p><p>If the card’s owner has no default card, then the new card will become the default.However, if the owner already has a default, then it will not change.To change the default, you should <a href="/docs/api#update_customer">update the customer</a> to have a new <code>default_source</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Payment_source?> postAsync(SourcesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Payment_source>(
        requestInfo, Payment_source.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>List sources for a specified customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SourcesGetRequestBody body,
      [void Function(
              RequestConfiguration<SourcesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SourcesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => SourcesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>When you create a new credit card, you must specify a customer or recipient on which to create it.</p><p>If the card’s owner has no default card, then the new card will become the default.However, if the owner already has a default, then it will not change.To change the default, you should <a href="/docs/api#update_customer">update the customer</a> to have a new <code>default_source</code>.</p>
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
