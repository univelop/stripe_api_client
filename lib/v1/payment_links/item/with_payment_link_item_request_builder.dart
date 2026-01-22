// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_link.dart';
import './line_items/line_items_request_builder.dart';
import './with_payment_link_get_request_body.dart';
import './with_payment_link_item_request_builder_get_query_parameters.dart';
import './with_payment_link_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_links\{payment_link}
class WithPaymentLinkItemRequestBuilder
    extends BaseRequestBuilder<WithPaymentLinkItemRequestBuilder> {
  ///  The line_items property
  LineItemsRequestBuilder get lineItems {
    return LineItemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithPaymentLinkItemRequestBuilder clone() {
    return WithPaymentLinkItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPaymentLinkItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentLinkItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_links/{payment_link}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPaymentLinkItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPaymentLinkItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_links/{payment_link}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a payment link.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentLink?> getAsync(WithPaymentLinkGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPaymentLinkItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentLink>(
        requestInfo, PaymentLink.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a payment link.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentLink?> postAsync(WithPaymentLinkPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentLink>(
        requestInfo, PaymentLink.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a payment link.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithPaymentLinkGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPaymentLinkItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithPaymentLinkItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithPaymentLinkItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a payment link.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithPaymentLinkPostRequestBody body,
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
