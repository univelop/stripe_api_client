// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_product_item_request_builder.dart';
import './products_get_request_body.dart';
import './products_get_response.dart';
import './products_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate\products
class ProductsRequestBuilder
    extends BaseRequestBuilder<ProductsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.climate.products.item collection
  ///  [product] Unique identifier of the item
  WithProductItemRequestBuilder byProduct(String product) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('product', () => product);
    return WithProductItemRequestBuilder(urlTplParams, requestAdapter);
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
            "{+baseurl}/v1/climate/products{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ProductsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ProductsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/products{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all available Climate product objects.</p>
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

  /// <p>Lists all available Climate product objects.</p>
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
}
