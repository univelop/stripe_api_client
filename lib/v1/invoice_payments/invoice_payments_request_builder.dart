// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './invoice_payments_get_request_body.dart';
import './invoice_payments_get_response.dart';
import './invoice_payments_request_builder_get_query_parameters.dart';
import './item/with_invoice_payment_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoice_payments
class InvoicePaymentsRequestBuilder
    extends BaseRequestBuilder<InvoicePaymentsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.invoice_payments.item collection
  ///  [invoicePayment] Unique identifier of the item
  WithInvoicePaymentItemRequestBuilder byInvoicePayment(String invoicePayment) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('invoice_payment', () => invoicePayment);
    return WithInvoicePaymentItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InvoicePaymentsRequestBuilder clone() {
    return InvoicePaymentsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [InvoicePaymentsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoicePaymentsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_payments{?created*,ending_before*,expand*,invoice*,limit*,payment*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [InvoicePaymentsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoicePaymentsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_payments{?created*,ending_before*,expand*,invoice*,limit*,payment*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoicePaymentsGetResponse?> getAsync(
      InvoicePaymentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InvoicePaymentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoicePaymentsGetResponse>(requestInfo,
        InvoicePaymentsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(InvoicePaymentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InvoicePaymentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<InvoicePaymentsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => InvoicePaymentsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
