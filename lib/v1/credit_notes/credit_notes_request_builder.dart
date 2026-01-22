// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/credit_note.dart';
import '../../models/error.dart';
import './credit_notes_get_request_body.dart';
import './credit_notes_get_response.dart';
import './credit_notes_post_request_body.dart';
import './credit_notes_request_builder_get_query_parameters.dart';
import './item/credit_note_item_request_builder.dart';
import './preview/preview_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\credit_notes
class CreditNotesRequestBuilder
    extends BaseRequestBuilder<CreditNotesRequestBuilder> {
  ///  The preview property
  PreviewRequestBuilder get preview {
    return PreviewRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.credit_notes.item collection
  ///  [creditNoteId] Unique identifier of the item
  CreditNoteItemRequestBuilder byCreditNoteId(String creditNoteId) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('credit_note%2Did', () => creditNoteId);
    return CreditNoteItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CreditNotesRequestBuilder clone() {
    return CreditNotesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditNotesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditNotesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes{?created*,customer*,customer_account*,ending_before*,expand*,invoice*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [CreditNotesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditNotesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes{?created*,customer*,customer_account*,ending_before*,expand*,invoice*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of credit notes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditNotesGetResponse?> getAsync(CreditNotesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditNotesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditNotesGetResponse>(requestInfo,
        CreditNotesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Issue a credit note to adjust the amount of a finalized invoice. A credit note will first reduce the invoice’s <code>amount_remaining</code> (and <code>amount_due</code>), but not below zero.This amount is indicated by the credit note’s <code>pre_payment_amount</code>. The excess amount is indicated by <code>post_payment_amount</code>, and it can result in any combination of the following:</p><ul><li>Refunds: create a new refund (using <code>refund_amount</code>) or link existing refunds (using <code>refunds</code>).</li><li>Customer balance credit: credit the customer’s balance (using <code>credit_amount</code>) which will be automatically applied to their next invoice when it’s finalized.</li><li>Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using <code>out_of_band_amount</code>).</li></ul><p>The sum of refunds, customer balance credits, and outside of Stripe credits must equal the <code>post_payment_amount</code>.</p><p>You may issue multiple credit notes for an invoice. Each credit note may increment the invoice’s <code>pre_payment_credit_notes_amount</code>,<code>post_payment_credit_notes_amount</code>, or both, depending on the invoice’s <code>amount_remaining</code> at the time of credit note creation.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditNote?> postAsync(CreditNotesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditNote>(
        requestInfo, CreditNote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of credit notes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CreditNotesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditNotesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CreditNotesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditNotesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Issue a credit note to adjust the amount of a finalized invoice. A credit note will first reduce the invoice’s <code>amount_remaining</code> (and <code>amount_due</code>), but not below zero.This amount is indicated by the credit note’s <code>pre_payment_amount</code>. The excess amount is indicated by <code>post_payment_amount</code>, and it can result in any combination of the following:</p><ul><li>Refunds: create a new refund (using <code>refund_amount</code>) or link existing refunds (using <code>refunds</code>).</li><li>Customer balance credit: credit the customer’s balance (using <code>credit_amount</code>) which will be automatically applied to their next invoice when it’s finalized.</li><li>Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using <code>out_of_band_amount</code>).</li></ul><p>The sum of refunds, customer balance credits, and outside of Stripe credits must equal the <code>post_payment_amount</code>.</p><p>You may issue multiple credit notes for an invoice. Each credit note may increment the invoice’s <code>pre_payment_credit_notes_amount</code>,<code>post_payment_credit_notes_amount</code>, or both, depending on the invoice’s <code>amount_remaining</code> at the time of credit note creation.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CreditNotesPostRequestBody body,
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
