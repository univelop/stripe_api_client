// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './item/with_payment_method_item_request_builder.dart';
import './payment_methods_get_request_body.dart';
import './payment_methods_get_response.dart';
import './payment_methods_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\payment_methods
class PaymentMethodsRequestBuilder
    extends BaseRequestBuilder<PaymentMethodsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.payment_methods.item collection
  ///  [paymentMethod] Unique identifier of the item
  WithPaymentMethodItemRequestBuilder byPaymentMethod(String paymentMethod) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('payment_method', () => paymentMethod);
    return WithPaymentMethodItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentMethodsRequestBuilder clone() {
    return PaymentMethodsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentMethodsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentMethodsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/payment_methods{?allow_redisplay*,ending_before*,expand*,limit*,starting_after*,type*}",
            pathParameters);

  /// Instantiates a new [PaymentMethodsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentMethodsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/payment_methods{?allow_redisplay*,ending_before*,expand*,limit*,starting_after*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of PaymentMethods for a given Customer</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodsGetResponse?> getAsync(PaymentMethodsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentMethodsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodsGetResponse>(requestInfo,
        PaymentMethodsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of PaymentMethods for a given Customer</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PaymentMethodsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentMethodsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PaymentMethodsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PaymentMethodsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
