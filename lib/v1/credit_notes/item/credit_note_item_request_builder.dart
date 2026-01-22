// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/credit_note.dart';
import '../../../models/error.dart';
import './credit_note_get_request_body.dart';
import './credit_note_item_request_builder_get_query_parameters.dart';
import './credit_note_post_request_body.dart';
import './lines/lines_request_builder.dart';
import './void_/void_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\credit_notes\{credit_note-id}
class CreditNoteItemRequestBuilder
    extends BaseRequestBuilder<CreditNoteItemRequestBuilder> {
  ///  The lines property
  LinesRequestBuilder get lines {
    return LinesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The void property
  VoidRequestBuilder get void_ {
    return VoidRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CreditNoteItemRequestBuilder clone() {
    return CreditNoteItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditNoteItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditNoteItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes/{credit_note%2Did}{?expand*}",
            pathParameters);

  /// Instantiates a new [CreditNoteItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditNoteItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes/{credit_note%2Did}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the credit note object with the given identifier.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditNote?> getAsync(CreditNoteGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditNoteItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditNote>(
        requestInfo, CreditNote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing credit note.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditNote?> postAsync(CreditNotePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditNote>(
        requestInfo, CreditNote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the credit note object with the given identifier.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CreditNoteGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditNoteItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CreditNoteItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditNoteItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing credit note.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CreditNotePostRequestBody body,
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
