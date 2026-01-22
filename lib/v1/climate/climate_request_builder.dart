// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './orders/orders_request_builder.dart';
import './products/products_request_builder.dart';
import './suppliers/suppliers_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate
class ClimateRequestBuilder extends BaseRequestBuilder<ClimateRequestBuilder> {
  ///  The orders property
  OrdersRequestBuilder get orders {
    return OrdersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The products property
  ProductsRequestBuilder get products {
    return ProductsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The suppliers property
  SuppliersRequestBuilder get suppliers {
    return SuppliersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ClimateRequestBuilder clone() {
    return ClimateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ClimateRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ClimateRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/climate", pathParameters);

  /// Instantiates a new [ClimateRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ClimateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/climate",
            {RequestInformation.rawUrlKey: rawUrl});
}
