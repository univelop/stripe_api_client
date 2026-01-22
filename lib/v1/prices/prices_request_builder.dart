// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/price.dart';
import './item/with_price_item_request_builder.dart';
import './prices_get_request_body.dart';
import './prices_get_response.dart';
import './prices_post_request_body.dart';
import './prices_request_builder_get_query_parameters.dart';
import './search/search_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\prices
class PricesRequestBuilder extends BaseRequestBuilder<PricesRequestBuilder> {
  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.prices.item collection
  ///  [price] Unique identifier of the item
  WithPriceItemRequestBuilder byPrice(String price) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('price', () => price);
    return WithPriceItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PricesRequestBuilder clone() {
    return PricesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PricesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PricesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/prices{?active*,created*,currency*,ending_before*,expand*,limit*,lookup_keys*,product*,recurring*,starting_after*,type*}",
            pathParameters);

  /// Instantiates a new [PricesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PricesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/prices{?active*,created*,currency*,ending_before*,expand*,limit*,lookup_keys*,product*,recurring*,starting_after*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your active prices, excluding <a href="/docs/products-prices/pricing-models#inline-pricing">inline prices</a>. For the list of inactive prices, set <code>active</code> to false.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PricesGetResponse?> getAsync(PricesGetRequestBody body,
      [void Function(
              RequestConfiguration<PricesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PricesGetResponse>(requestInfo,
        PricesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <a href="https://docs.stripe.com/api/prices">Price</a> for an existing <a href="https://docs.stripe.com/api/products">Product</a>. The Price can be recurring or one-time.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Price?> postAsync(PricesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Price>(
        requestInfo, Price.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your active prices, excluding <a href="/docs/products-prices/pricing-models#inline-pricing">inline prices</a>. For the list of inactive prices, set <code>active</code> to false.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PricesGetRequestBody body,
      [void Function(
              RequestConfiguration<PricesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PricesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PricesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <a href="https://docs.stripe.com/api/prices">Price</a> for an existing <a href="https://docs.stripe.com/api/products">Product</a>. The Price can be recurring or one-time.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PricesPostRequestBody body,
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
