// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/line_item.dart';
import './with_line_item_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoices\{invoice}\lines\{line_item_id}
class WithLineItemItemRequestBuilder
    extends BaseRequestBuilder<WithLineItemItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithLineItemItemRequestBuilder clone() {
    return WithLineItemItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithLineItemItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithLineItemItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoices/{invoice}/lines/{line_item_id}",
            pathParameters);

  /// Instantiates a new [WithLineItemItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithLineItemItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoices/{invoice}/lines/{line_item_id}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Updates an invoice’s line item. Some fields, such as <code>tax_amounts</code>, only live on the invoice line item,so they can only be updated through this endpoint. Other fields, such as <code>amount</code>, live on both the invoiceitem and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.Updating an invoice’s line item is only possible before the invoice is finalized.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<LineItem?> postAsync(WithLineItemPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<LineItem>(
        requestInfo, LineItem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an invoice’s line item. Some fields, such as <code>tax_amounts</code>, only live on the invoice line item,so they can only be updated through this endpoint. Other fields, such as <code>amount</code>, live on both the invoiceitem and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.Updating an invoice’s line item is only possible before the invoice is finalized.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithLineItemPostRequestBody body,
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
