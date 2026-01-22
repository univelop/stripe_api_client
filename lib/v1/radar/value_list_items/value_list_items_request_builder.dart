// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/radar/value_list_item.dart';
import './item/with_item_item_request_builder.dart';
import './value_list_items_get_request_body.dart';
import './value_list_items_get_response.dart';
import './value_list_items_post_request_body.dart';
import './value_list_items_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar\value_list_items
class ValueListItemsRequestBuilder
    extends BaseRequestBuilder<ValueListItemsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.radar.value_list_items.item collection
  ///  [item] Unique identifier of the item
  WithItemItemRequestBuilder byItem(String item) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('item', () => item);
    return WithItemItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ValueListItemsRequestBuilder clone() {
    return ValueListItemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ValueListItemsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ValueListItemsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_list_items?value_list={value_list}{&created*,ending_before*,expand*,limit*,starting_after*,value*}",
            pathParameters);

  /// Instantiates a new [ValueListItemsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ValueListItemsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_list_items?value_list={value_list}{&created*,ending_before*,expand*,limit*,starting_after*,value*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of <code>ValueListItem</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ValueListItemsGetResponse?> getAsync(ValueListItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ValueListItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ValueListItemsGetResponse>(requestInfo,
        ValueListItemsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <code>ValueListItem</code> object, which is added to the specified parent value list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ValueListItem?> postAsync(ValueListItemsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ValueListItem>(
        requestInfo, ValueListItem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of <code>ValueListItem</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ValueListItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ValueListItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ValueListItemsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ValueListItemsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <code>ValueListItem</code> object, which is added to the specified parent value list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      ValueListItemsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/radar/value_list_items',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
