// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/invoice_rendering_template.dart';
import './unarchive_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoice_rendering_templates\{template}\unarchive
class UnarchiveRequestBuilder
    extends BaseRequestBuilder<UnarchiveRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  UnarchiveRequestBuilder clone() {
    return UnarchiveRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [UnarchiveRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  UnarchiveRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_rendering_templates/{template}/unarchive",
            pathParameters);

  /// Instantiates a new [UnarchiveRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  UnarchiveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_rendering_templates/{template}/unarchive",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Unarchive an invoice rendering template so it can be used on new Stripe objects again.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoiceRenderingTemplate?> postAsync(UnarchivePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoiceRenderingTemplate>(requestInfo,
        InvoiceRenderingTemplate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Unarchive an invoice rendering template so it can be used on new Stripe objects again.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(UnarchivePostRequestBody body,
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
