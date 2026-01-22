// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/deleted_product_feature.dart';
import '../../../../../models/error.dart';
import '../../../../../models/product_feature.dart';
import './features_delete_request_body.dart';
import './features_get_request_body.dart';
import './features_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\products\{-id}\features\{id}
class FeaturesItemRequestBuilder
    extends BaseRequestBuilder<FeaturesItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  FeaturesItemRequestBuilder clone() {
    return FeaturesItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FeaturesItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FeaturesItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/products/{%2Did}/features/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [FeaturesItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FeaturesItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/products/{%2Did}/features/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes the feature attachment to a product</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedProductFeature?> deleteAsync(FeaturesDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedProductFeature>(requestInfo,
        DeletedProductFeature.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a product_feature, which represents a feature attachment to a product</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ProductFeature?> getAsync(FeaturesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  FeaturesItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ProductFeature>(
        requestInfo, ProductFeature.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Deletes the feature attachment to a product</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(FeaturesDeleteRequestBody body,
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

  /// <p>Retrieves a product_feature, which represents a feature attachment to a product</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(FeaturesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  FeaturesItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FeaturesItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => FeaturesItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
