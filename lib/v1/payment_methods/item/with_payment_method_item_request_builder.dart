// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_method.dart';
import './attach/attach_request_builder.dart';
import './detach/detach_request_builder.dart';
import './with_payment_method_get_request_body.dart';
import './with_payment_method_item_request_builder_get_query_parameters.dart';
import './with_payment_method_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_methods\{payment_method}
class WithPaymentMethodItemRequestBuilder
    extends BaseRequestBuilder<WithPaymentMethodItemRequestBuilder> {
  ///  The attach property
  AttachRequestBuilder get attach {
    return AttachRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The detach property
  DetachRequestBuilder get detach {
    return DetachRequestBuilder(pathParameters, requestAdapter);
  }

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
            "{+baseurl}/v1/payment_methods/{payment_method}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPaymentMethodItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentMethodItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_methods/{payment_method}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a PaymentMethod object attached to the StripeAccount. To retrieve a payment method attached to a Customer, you should use <a href="/docs/api/payment_methods/customer">Retrieve a Customer’s PaymentMethods</a></p>
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

  /// <p>Updates a PaymentMethod object. A PaymentMethod must be attached to a customer to be updated.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethod?> postAsync(WithPaymentMethodPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethod>(
        requestInfo, PaymentMethod.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a PaymentMethod object attached to the StripeAccount. To retrieve a payment method attached to a Customer, you should use <a href="/docs/api/payment_methods/customer">Retrieve a Customer’s PaymentMethods</a></p>
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

  /// <p>Updates a PaymentMethod object. A PaymentMethod must be attached to a customer to be updated.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithPaymentMethodPostRequestBody body,
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
