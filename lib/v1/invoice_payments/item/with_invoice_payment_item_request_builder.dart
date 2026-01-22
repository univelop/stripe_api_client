// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/invoice_payment.dart';
import './with_invoice_payment_get_request_body.dart';
import './with_invoice_payment_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoice_payments\{invoice_payment}
class WithInvoicePaymentItemRequestBuilder
    extends BaseRequestBuilder<WithInvoicePaymentItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithInvoicePaymentItemRequestBuilder clone() {
    return WithInvoicePaymentItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithInvoicePaymentItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithInvoicePaymentItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_payments/{invoice_payment}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithInvoicePaymentItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithInvoicePaymentItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_payments/{invoice_payment}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the invoice payment with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoicePayment?> getAsync(WithInvoicePaymentGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithInvoicePaymentItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoicePayment>(
        requestInfo, InvoicePayment.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the invoice payment with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithInvoicePaymentGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithInvoicePaymentItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithInvoicePaymentItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithInvoicePaymentItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
