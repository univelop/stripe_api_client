// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_method_domain.dart';
import './validate_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_method_domains\{payment_method_domain}\validate
class ValidateRequestBuilder
    extends BaseRequestBuilder<ValidateRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ValidateRequestBuilder clone() {
    return ValidateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ValidateRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ValidateRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_domains/{payment_method_domain}/validate",
            pathParameters);

  /// Instantiates a new [ValidateRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ValidateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_domains/{payment_method_domain}/validate",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Some payment methods might require additional steps to register a domain. If the requirements weren’t satisfied when the domain was created, the payment method will be inactive on the domain.The payment method doesn’t appear in Elements or Embedded Checkout for this domain until it is active.</p><p>To activate a payment method on an existing payment method domain, complete the required registration steps specific to the payment method, and then validate the payment method domain with this endpoint.</p><p>Related guides: <a href="/docs/payments/payment-methods/pmd-registration">Payment method domains</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodDomain?> postAsync(ValidatePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodDomain>(requestInfo,
        PaymentMethodDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Some payment methods might require additional steps to register a domain. If the requirements weren’t satisfied when the domain was created, the payment method will be inactive on the domain.The payment method doesn’t appear in Elements or Embedded Checkout for this domain until it is active.</p><p>To activate a payment method on an existing payment method domain, complete the required registration steps specific to the payment method, and then validate the payment method domain with this endpoint.</p><p>Related guides: <a href="/docs/payments/payment-methods/pmd-registration">Payment method domains</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ValidatePostRequestBody body,
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
