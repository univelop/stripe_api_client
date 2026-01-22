// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/product.dart';
import './item/item_request_builder.dart';
import './products_get_request_body.dart';
import './products_get_response.dart';
import './products_post_request_body.dart';
import './products_request_builder_get_query_parameters.dart';
import './search/search_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\products
class ProductsRequestBuilder
    extends BaseRequestBuilder<ProductsRequestBuilder> {
  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.products.item collection
  ///  [id] Unique identifier of the item
  ItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('%2Did', () => id);
    return ItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ProductsRequestBuilder clone() {
    return ProductsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ProductsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ProductsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/products{?active*,created*,ending_before*,expand*,ids*,limit*,shippable*,starting_after*,url*}",
            pathParameters);

  /// Instantiates a new [ProductsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ProductsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/products{?active*,created*,ending_before*,expand*,ids*,limit*,shippable*,starting_after*,url*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ProductsGetResponse?> getAsync(ProductsGetRequestBody body,
      [void Function(
              RequestConfiguration<ProductsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ProductsGetResponse>(requestInfo,
        ProductsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new product object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Product?> postAsync(ProductsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Product>(
        requestInfo, Product.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ProductsGetRequestBody body,
      [void Function(
              RequestConfiguration<ProductsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ProductsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => ProductsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new product object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ProductsPostRequestBody body,
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
