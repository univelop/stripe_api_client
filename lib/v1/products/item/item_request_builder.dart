// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/deleted_product.dart';
import '../../../models/error.dart';
import '../../../models/product.dart';
import './delete_request_body.dart';
import './features/features_request_builder.dart';
import './get_request_body.dart';
import './item_request_builder_get_query_parameters.dart';
import './post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\products\{-id}
class ItemRequestBuilder extends BaseRequestBuilder<ItemRequestBuilder> {
  ///  The features property
  FeaturesRequestBuilder get features {
    return FeaturesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ItemRequestBuilder clone() {
    return ItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/products/{%2Did}{?expand*}",
            pathParameters);

  /// Instantiates a new [ItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/products/{%2Did}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with <code>type=good</code> is only possible if it has no SKUs associated with it.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedProduct?> deleteAsync(DeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedProduct>(
        requestInfo, DeletedProduct.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Product?> getAsync(GetRequestBody body,
      [void Function(
              RequestConfiguration<ItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Product>(
        requestInfo, Product.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Product?> postAsync(PostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Product>(
        requestInfo, Product.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with <code>type=good</code> is only possible if it has no SKUs associated with it.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(DeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(GetRequestBody body,
      [void Function(
              RequestConfiguration<ItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ItemRequestBuilderGetQueryParameters>(
        requestConfiguration, () => ItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PostRequestBody body,
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
