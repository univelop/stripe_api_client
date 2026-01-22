// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/payment_method_domain.dart';
import './item/with_payment_method_domain_item_request_builder.dart';
import './payment_method_domains_get_request_body.dart';
import './payment_method_domains_get_response.dart';
import './payment_method_domains_post_request_body.dart';
import './payment_method_domains_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_method_domains
class PaymentMethodDomainsRequestBuilder
    extends BaseRequestBuilder<PaymentMethodDomainsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.payment_method_domains.item collection
  ///  [paymentMethodDomain] Unique identifier of the item
  WithPaymentMethodDomainItemRequestBuilder byPaymentMethodDomain(
      String paymentMethodDomain) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent(
        'payment_method_domain', () => paymentMethodDomain);
    return WithPaymentMethodDomainItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentMethodDomainsRequestBuilder clone() {
    return PaymentMethodDomainsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentMethodDomainsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentMethodDomainsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_domains{?domain_name*,enabled*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PaymentMethodDomainsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentMethodDomainsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_domains{?domain_name*,enabled*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists the details of existing payment method domains.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodDomainsGetResponse?> getAsync(
      PaymentMethodDomainsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentMethodDomainsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodDomainsGetResponse>(
        requestInfo,
        PaymentMethodDomainsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates a payment method domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodDomain?> postAsync(
      PaymentMethodDomainsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodDomain>(requestInfo,
        PaymentMethodDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists the details of existing payment method domains.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      PaymentMethodDomainsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentMethodDomainsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PaymentMethodDomainsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PaymentMethodDomainsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a payment method domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      PaymentMethodDomainsPostRequestBody body,
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
