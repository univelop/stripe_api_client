// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/deleted_invoice.dart';
import '../../../models/error.dart';
import '../../../models/invoice.dart';
import './add_lines/add_lines_request_builder.dart';
import './attach_payment/attach_payment_request_builder.dart';
import './finalize/finalize_request_builder.dart';
import './lines/lines_request_builder.dart';
import './mark_uncollectible/mark_uncollectible_request_builder.dart';
import './pay/pay_request_builder.dart';
import './remove_lines/remove_lines_request_builder.dart';
import './send/send_request_builder.dart';
import './update_lines/update_lines_request_builder.dart';
import './void_/void_request_builder.dart';
import './with_invoice_delete_request_body.dart';
import './with_invoice_get_request_body.dart';
import './with_invoice_item_request_builder_get_query_parameters.dart';
import './with_invoice_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoices\{invoice}
class WithInvoiceItemRequestBuilder
    extends BaseRequestBuilder<WithInvoiceItemRequestBuilder> {
  ///  The add_lines property
  AddLinesRequestBuilder get addLines {
    return AddLinesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The attach_payment property
  AttachPaymentRequestBuilder get attachPayment {
    return AttachPaymentRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The finalize property
  FinalizeRequestBuilder get finalize {
    return FinalizeRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The lines property
  LinesRequestBuilder get lines {
    return LinesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The mark_uncollectible property
  MarkUncollectibleRequestBuilder get markUncollectible {
    return MarkUncollectibleRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The pay property
  PayRequestBuilder get pay {
    return PayRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The remove_lines property
  RemoveLinesRequestBuilder get removeLines {
    return RemoveLinesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The send property
  SendRequestBuilder get send {
    return SendRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The update_lines property
  UpdateLinesRequestBuilder get updateLines {
    return UpdateLinesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The void property
  VoidRequestBuilder get void_ {
    return VoidRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithInvoiceItemRequestBuilder clone() {
    return WithInvoiceItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithInvoiceItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithInvoiceItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/invoices/{invoice}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithInvoiceItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithInvoiceItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/invoices/{invoice}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be <a href="#void_invoice">voided</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedInvoice?> deleteAsync(WithInvoiceDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedInvoice>(
        requestInfo, DeletedInvoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the invoice with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoice?> getAsync(WithInvoiceGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithInvoiceItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoice>(
        requestInfo, Invoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Draft invoices are fully editable. Once an invoice is <a href="/docs/billing/invoices/workflow#finalized">finalized</a>,monetary values, as well as <code>collection_method</code>, become uneditable.</p><p>If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,sending reminders for, or <a href="/docs/billing/invoices/reconciliation">automatically reconciling</a> invoices, pass<code>auto_advance=false</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoice?> postAsync(WithInvoicePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoice>(
        requestInfo, Invoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be <a href="#void_invoice">voided</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithInvoiceDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves the invoice with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithInvoiceGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithInvoiceItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithInvoiceItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithInvoiceItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Draft invoices are fully editable. Once an invoice is <a href="/docs/billing/invoices/workflow#finalized">finalized</a>,monetary values, as well as <code>collection_method</code>, become uneditable.</p><p>If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,sending reminders for, or <a href="/docs/billing/invoices/reconciliation">automatically reconciling</a> invoices, pass<code>auto_advance=false</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithInvoicePostRequestBody body,
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
