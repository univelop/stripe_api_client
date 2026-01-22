// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/credit_note.dart';
import '../../../models/error.dart';
import './lines/lines_request_builder.dart';
import './preview_get_request_body.dart';
import './preview_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\credit_notes\preview
class PreviewRequestBuilder extends BaseRequestBuilder<PreviewRequestBuilder> {
  ///  The lines property
  LinesRequestBuilder get lines {
    return LinesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PreviewRequestBuilder clone() {
    return PreviewRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PreviewRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PreviewRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes/preview?invoice={invoice}{&amount*,credit_amount*,effective_at*,email_type*,expand*,lines*,memo*,metadata*,out_of_band_amount*,reason*,refund_amount*,refunds*,shipping_cost*}",
            pathParameters);

  /// Instantiates a new [PreviewRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PreviewRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes/preview?invoice={invoice}{&amount*,credit_amount*,effective_at*,email_type*,expand*,lines*,memo*,metadata*,out_of_band_amount*,reason*,refund_amount*,refunds*,shipping_cost*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Get a preview of a credit note without creating it.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditNote?> getAsync(PreviewGetRequestBody body,
      [void Function(
              RequestConfiguration<PreviewRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditNote>(
        requestInfo, CreditNote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Get a preview of a credit note without creating it.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PreviewGetRequestBody body,
      [void Function(
              RequestConfiguration<PreviewRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PreviewRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PreviewRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
