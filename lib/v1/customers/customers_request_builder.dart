// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/customer.dart';
import '../../models/error.dart';
import './customers_get_request_body.dart';
import './customers_get_response.dart';
import './customers_post_request_body.dart';
import './customers_request_builder_get_query_parameters.dart';
import './item/with_customer_item_request_builder.dart';
import './search/search_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers
class CustomersRequestBuilder
    extends BaseRequestBuilder<CustomersRequestBuilder> {
  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.customers.item collection
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
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers{?created*,email*,ending_before*,expand*,limit*,starting_after*,test_clock*}",
            pathParameters);

  /// Instantiates a new [CustomersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CustomersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers{?created*,email*,ending_before*,expand*,limit*,starting_after*,test_clock*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CustomersGetResponse?> getAsync(CustomersGetRequestBody body,
      [void Function(
              RequestConfiguration<CustomersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CustomersGetResponse>(requestInfo,
        CustomersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new customer object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Customer?> postAsync(CustomersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Customer>(
        requestInfo, Customer.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CustomersGetRequestBody body,
      [void Function(
              RequestConfiguration<CustomersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CustomersRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CustomersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new customer object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CustomersPostRequestBody body,
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
