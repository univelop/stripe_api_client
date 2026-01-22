// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/invoice.dart';
import './remove_lines_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoices\{invoice}\remove_lines
class RemoveLinesRequestBuilder
    extends BaseRequestBuilder<RemoveLinesRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RemoveLinesRequestBuilder clone() {
    return RemoveLinesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RemoveLinesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RemoveLinesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/invoices/{invoice}/remove_lines",
            pathParameters);

  /// Instantiates a new [RemoveLinesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RemoveLinesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/invoices/{invoice}/remove_lines",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoice?> postAsync(RemoveLinesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoice>(
        requestInfo, Invoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RemoveLinesPostRequestBody body,
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
