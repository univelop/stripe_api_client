// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/invoice.dart';
import './create_preview/create_preview_request_builder.dart';
import './invoices_get_request_body.dart';
import './invoices_get_response.dart';
import './invoices_post_request_body.dart';
import './invoices_request_builder_get_query_parameters.dart';
import './item/with_invoice_item_request_builder.dart';
import './search/search_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoices
class InvoicesRequestBuilder
    extends BaseRequestBuilder<InvoicesRequestBuilder> {
  ///  The create_preview property
  CreatePreviewRequestBuilder get createPreview {
    return CreatePreviewRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.invoices.item collection
  ///  [invoice] Unique identifier of the item
  WithInvoiceItemRequestBuilder byInvoice(String invoice) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('invoice', () => invoice);
    return WithInvoiceItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InvoicesRequestBuilder clone() {
    return InvoicesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [InvoicesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoicesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoices{?collection_method*,created*,customer*,customer_account*,due_date*,ending_before*,expand*,limit*,starting_after*,status*,subscription*}",
            pathParameters);

  /// Instantiates a new [InvoicesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoicesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoices{?collection_method*,created*,customer*,customer_account*,due_date*,ending_before*,expand*,limit*,starting_after*,status*,subscription*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoicesGetResponse?> getAsync(InvoicesGetRequestBody body,
      [void Function(
              RequestConfiguration<InvoicesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoicesGetResponse>(requestInfo,
        InvoicesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>This endpoint creates a draft invoice for a given customer. The invoice remains a draft until you <a href="#finalize_invoice">finalize</a> the invoice, which allows you to <a href="#pay_invoice">pay</a> or <a href="#send_invoice">send</a> the invoice to your customers.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoice?> postAsync(InvoicesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoice>(
        requestInfo, Invoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(InvoicesGetRequestBody body,
      [void Function(
              RequestConfiguration<InvoicesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<InvoicesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => InvoicesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>This endpoint creates a draft invoice for a given customer. The invoice remains a draft until you <a href="#finalize_invoice">finalize</a> the invoice, which allows you to <a href="#pay_invoice">pay</a> or <a href="#send_invoice">send</a> the invoice to your customers.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(InvoicesPostRequestBody body,
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
