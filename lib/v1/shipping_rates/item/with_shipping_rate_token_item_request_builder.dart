// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/shipping_rate.dart';
import './with_shipping_rate_token_get_request_body.dart';
import './with_shipping_rate_token_item_request_builder_get_query_parameters.dart';
import './with_shipping_rate_token_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\shipping_rates\{shipping_rate_token}
class WithShippingRateTokenItemRequestBuilder
    extends BaseRequestBuilder<WithShippingRateTokenItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithShippingRateTokenItemRequestBuilder clone() {
    return WithShippingRateTokenItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithShippingRateTokenItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithShippingRateTokenItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/shipping_rates/{shipping_rate_token}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithShippingRateTokenItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithShippingRateTokenItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/shipping_rates/{shipping_rate_token}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns the shipping rate object with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ShippingRate?> getAsync(WithShippingRateTokenGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithShippingRateTokenItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ShippingRate>(
        requestInfo, ShippingRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing shipping rate object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ShippingRate?> postAsync(WithShippingRateTokenPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ShippingRate>(
        requestInfo, ShippingRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns the shipping rate object with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithShippingRateTokenGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithShippingRateTokenItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithShippingRateTokenItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithShippingRateTokenItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing shipping rate object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithShippingRateTokenPostRequestBody body,
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
