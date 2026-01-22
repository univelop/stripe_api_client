// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_customer_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\customers
class CustomersRequestBuilder
    extends BaseRequestBuilder<CustomersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.customers.item collection
  ///  [customer] Unique identifier of the item
  WithCustomerItemRequestBuilder byCustomer(String customer) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('customer', () => customer);
    return WithCustomerItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CustomersRequestBuilder clone() {
    return CustomersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CustomersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CustomersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/customers",
            pathParameters);

  /// Instantiates a new [CustomersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CustomersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/customers",
            {RequestInformation.rawUrlKey: rawUrl});
}
