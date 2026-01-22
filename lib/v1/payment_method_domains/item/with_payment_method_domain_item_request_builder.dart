// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_method_domain.dart';
import './validate/validate_request_builder.dart';
import './with_payment_method_domain_get_request_body.dart';
import './with_payment_method_domain_item_request_builder_get_query_parameters.dart';
import './with_payment_method_domain_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_method_domains\{payment_method_domain}
class WithPaymentMethodDomainItemRequestBuilder
    extends BaseRequestBuilder<WithPaymentMethodDomainItemRequestBuilder> {
  ///  The validate property
  ValidateRequestBuilder get validate {
    return ValidateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithPaymentMethodDomainItemRequestBuilder clone() {
    return WithPaymentMethodDomainItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPaymentMethodDomainItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentMethodDomainItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_domains/{payment_method_domain}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPaymentMethodDomainItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentMethodDomainItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_domains/{payment_method_domain}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing payment method domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodDomain?> getAsync(
      WithPaymentMethodDomainGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPaymentMethodDomainItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodDomain>(requestInfo,
        PaymentMethodDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing payment method domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodDomain?> postAsync(
      WithPaymentMethodDomainPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodDomain>(requestInfo,
        PaymentMethodDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing payment method domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithPaymentMethodDomainGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPaymentMethodDomainItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithPaymentMethodDomainItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () =>
                WithPaymentMethodDomainItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing payment method domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithPaymentMethodDomainPostRequestBody body,
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
