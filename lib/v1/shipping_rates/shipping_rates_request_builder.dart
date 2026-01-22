// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/shipping_rate.dart';
import './item/with_shipping_rate_token_item_request_builder.dart';
import './shipping_rates_get_request_body.dart';
import './shipping_rates_get_response.dart';
import './shipping_rates_post_request_body.dart';
import './shipping_rates_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\shipping_rates
class ShippingRatesRequestBuilder
    extends BaseRequestBuilder<ShippingRatesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.shipping_rates.item collection
  ///  [shippingRateToken] Unique identifier of the item
  WithShippingRateTokenItemRequestBuilder byShippingRateToken(
      String shippingRateToken) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('shipping_rate_token', () => shippingRateToken);
    return WithShippingRateTokenItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ShippingRatesRequestBuilder clone() {
    return ShippingRatesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ShippingRatesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ShippingRatesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/shipping_rates{?active*,created*,currency*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ShippingRatesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ShippingRatesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/shipping_rates{?active*,created*,currency*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your shipping rates.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ShippingRatesGetResponse?> getAsync(ShippingRatesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ShippingRatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ShippingRatesGetResponse>(requestInfo,
        ShippingRatesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new shipping rate object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ShippingRate?> postAsync(ShippingRatesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ShippingRate>(
        requestInfo, ShippingRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your shipping rates.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ShippingRatesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ShippingRatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ShippingRatesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ShippingRatesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new shipping rate object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ShippingRatesPostRequestBody body,
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
