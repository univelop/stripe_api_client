// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/payment_method.dart';
import './with_payment_method_get_request_body.dart';
import './with_payment_method_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\payment_methods\{payment_method}
class WithPaymentMethodItemRequestBuilder
    extends BaseRequestBuilder<WithPaymentMethodItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithPaymentMethodItemRequestBuilder clone() {
    return WithPaymentMethodItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPaymentMethodItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentMethodItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/payment_methods/{payment_method}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPaymentMethodItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentMethodItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/payment_methods/{payment_method}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a PaymentMethod object for a given Customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethod?> getAsync(WithPaymentMethodGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPaymentMethodItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethod>(
        requestInfo, PaymentMethod.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a PaymentMethod object for a given Customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithPaymentMethodGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPaymentMethodItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithPaymentMethodItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithPaymentMethodItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
