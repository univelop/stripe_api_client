// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/payment_link.dart';
import './item/with_payment_link_item_request_builder.dart';
import './payment_links_get_request_body.dart';
import './payment_links_get_response.dart';
import './payment_links_post_request_body.dart';
import './payment_links_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_links
class PaymentLinksRequestBuilder
    extends BaseRequestBuilder<PaymentLinksRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.payment_links.item collection
  ///  [paymentLink] Unique identifier of the item
  WithPaymentLinkItemRequestBuilder byPaymentLink(String paymentLink) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('payment_link', () => paymentLink);
    return WithPaymentLinkItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentLinksRequestBuilder clone() {
    return PaymentLinksRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentLinksRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentLinksRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_links{?active*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PaymentLinksRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentLinksRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_links{?active*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your payment links.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentLinksGetResponse?> getAsync(PaymentLinksGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentLinksRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentLinksGetResponse>(requestInfo,
        PaymentLinksGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a payment link.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentLink?> postAsync(PaymentLinksPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentLink>(
        requestInfo, PaymentLink.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your payment links.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PaymentLinksGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentLinksRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PaymentLinksRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PaymentLinksRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a payment link.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PaymentLinksPostRequestBody body,
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
