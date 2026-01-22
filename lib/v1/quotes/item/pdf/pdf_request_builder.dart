// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './pdf_get_request_body.dart';
import './pdf_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\quotes\{quote}\pdf
class PdfRequestBuilder extends BaseRequestBuilder<PdfRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  PdfRequestBuilder clone() {
    return PdfRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PdfRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PdfRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/quotes/{quote}/pdf{?expand*}",
            pathParameters);

  /// Instantiates a new [PdfRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PdfRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/quotes/{quote}/pdf{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Download the PDF for a finalized quote. Explanation for special handling can be found <a href="https://docs.stripe.com/quotes/overview#quote_pdf">here</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Iterable<int>?> getAsync(PdfGetRequestBody body,
      [void Function(RequestConfiguration<PdfRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.sendPrimitiveCollection<int>(
        requestInfo, errorMapping);
  }

  /// <p>Download the PDF for a finalized quote. Explanation for special handling can be found <a href="https://docs.stripe.com/quotes/overview#quote_pdf">here</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PdfGetRequestBody body,
      [void Function(RequestConfiguration<PdfRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PdfRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PdfRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/pdf, application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
