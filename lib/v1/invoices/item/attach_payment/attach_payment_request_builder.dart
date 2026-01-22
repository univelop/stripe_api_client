// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/invoice.dart';
import './attach_payment_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoices\{invoice}\attach_payment
class AttachPaymentRequestBuilder
    extends BaseRequestBuilder<AttachPaymentRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  AttachPaymentRequestBuilder clone() {
    return AttachPaymentRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AttachPaymentRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AttachPaymentRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/invoices/{invoice}/attach_payment",
            pathParameters);

  /// Instantiates a new [AttachPaymentRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AttachPaymentRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/invoices/{invoice}/attach_payment",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Attaches a PaymentIntent or an Out of Band Payment to the invoice, adding it to the list of <code>payments</code>.</p><p>For the PaymentIntent, when the PaymentIntent’s status changes to <code>succeeded</code>, the payment is creditedto the invoice, increasing its <code>amount_paid</code>. When the invoice is fully paid, theinvoice’s status becomes <code>paid</code>.</p><p>If the PaymentIntent’s status is already <code>succeeded</code> when it’s attached, it’scredited to the invoice immediately.</p><p>See: <a href="/docs/invoicing/partial-payments">Partial payments</a> to learn more.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoice?> postAsync(AttachPaymentPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoice>(
        requestInfo, Invoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Attaches a PaymentIntent or an Out of Band Payment to the invoice, adding it to the list of <code>payments</code>.</p><p>For the PaymentIntent, when the PaymentIntent’s status changes to <code>succeeded</code>, the payment is creditedto the invoice, increasing its <code>amount_paid</code>. When the invoice is fully paid, theinvoice’s status becomes <code>paid</code>.</p><p>If the PaymentIntent’s status is already <code>succeeded</code> when it’s attached, it’scredited to the invoice immediately.</p><p>See: <a href="/docs/invoicing/partial-payments">Partial payments</a> to learn more.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(AttachPaymentPostRequestBody body,
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
