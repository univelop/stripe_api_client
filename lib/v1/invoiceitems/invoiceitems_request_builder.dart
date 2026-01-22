// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/invoiceitem.dart';
import './invoiceitems_get_request_body.dart';
import './invoiceitems_get_response.dart';
import './invoiceitems_post_request_body.dart';
import './invoiceitems_request_builder_get_query_parameters.dart';
import './item/with_invoiceitem_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoiceitems
class InvoiceitemsRequestBuilder
    extends BaseRequestBuilder<InvoiceitemsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.invoiceitems.item collection
  ///  [invoiceitem] Unique identifier of the item
  WithInvoiceitemItemRequestBuilder byInvoiceitem(String invoiceitem) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('invoiceitem', () => invoiceitem);
    return WithInvoiceitemItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InvoiceitemsRequestBuilder clone() {
    return InvoiceitemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [InvoiceitemsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoiceitemsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoiceitems{?created*,customer*,customer_account*,ending_before*,expand*,invoice*,limit*,pending*,starting_after*}",
            pathParameters);

  /// Instantiates a new [InvoiceitemsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoiceitemsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoiceitems{?created*,customer*,customer_account*,ending_before*,expand*,invoice*,limit*,pending*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoiceitemsGetResponse?> getAsync(InvoiceitemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InvoiceitemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoiceitemsGetResponse>(requestInfo,
        InvoiceitemsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoiceitem?> postAsync(InvoiceitemsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoiceitem>(
        requestInfo, Invoiceitem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(InvoiceitemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InvoiceitemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<InvoiceitemsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => InvoiceitemsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(InvoiceitemsPostRequestBody body,
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
