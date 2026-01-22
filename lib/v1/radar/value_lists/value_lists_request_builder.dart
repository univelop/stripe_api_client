// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/radar/value_list.dart';
import './item/with_value_list_item_request_builder.dart';
import './value_lists_get_request_body.dart';
import './value_lists_get_response.dart';
import './value_lists_post_request_body.dart';
import './value_lists_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar\value_lists
class ValueListsRequestBuilder
    extends BaseRequestBuilder<ValueListsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.radar.value_lists.item collection
  ///  [valueList] Unique identifier of the item
  WithValueListItemRequestBuilder byValueList(String valueList) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('value_list', () => valueList);
    return WithValueListItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ValueListsRequestBuilder clone() {
    return ValueListsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ValueListsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ValueListsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_lists{?alias*,contains*,created*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ValueListsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ValueListsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_lists{?alias*,contains*,created*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of <code>ValueList</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ValueListsGetResponse?> getAsync(ValueListsGetRequestBody body,
      [void Function(
              RequestConfiguration<ValueListsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ValueListsGetResponse>(requestInfo,
        ValueListsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <code>ValueList</code> object, which can then be referenced in rules.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ValueList?> postAsync(ValueListsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ValueList>(
        requestInfo, ValueList.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of <code>ValueList</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ValueListsGetRequestBody body,
      [void Function(
              RequestConfiguration<ValueListsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ValueListsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ValueListsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <code>ValueList</code> object, which can then be referenced in rules.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ValueListsPostRequestBody body,
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
