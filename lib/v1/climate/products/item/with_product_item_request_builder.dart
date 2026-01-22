// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/climate/product.dart';
import '../../../../models/error.dart';
import './with_product_get_request_body.dart';
import './with_product_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate\products\{product}
class WithProductItemRequestBuilder
    extends BaseRequestBuilder<WithProductItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithProductItemRequestBuilder clone() {
    return WithProductItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithProductItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithProductItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/products/{product}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithProductItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithProductItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/products/{product}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a Climate product with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Product?> getAsync(WithProductGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithProductItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Product>(
        requestInfo, Product.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a Climate product with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithProductGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithProductItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithProductItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithProductItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
