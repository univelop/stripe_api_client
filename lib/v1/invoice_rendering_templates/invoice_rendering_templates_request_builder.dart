// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './invoice_rendering_templates_get_request_body.dart';
import './invoice_rendering_templates_get_response.dart';
import './invoice_rendering_templates_request_builder_get_query_parameters.dart';
import './item/with_template_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoice_rendering_templates
class InvoiceRenderingTemplatesRequestBuilder
    extends BaseRequestBuilder<InvoiceRenderingTemplatesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.invoice_rendering_templates.item collection
  ///  [template] Unique identifier of the item
  WithTemplateItemRequestBuilder byTemplate(String template) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('template', () => template);
    return WithTemplateItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InvoiceRenderingTemplatesRequestBuilder clone() {
    return InvoiceRenderingTemplatesRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [InvoiceRenderingTemplatesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoiceRenderingTemplatesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_rendering_templates{?ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [InvoiceRenderingTemplatesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InvoiceRenderingTemplatesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_rendering_templates{?ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List all templates, ordered by creation date, with the most recently created template appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoiceRenderingTemplatesGetResponse?> getAsync(
      InvoiceRenderingTemplatesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InvoiceRenderingTemplatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoiceRenderingTemplatesGetResponse>(
        requestInfo,
        InvoiceRenderingTemplatesGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>List all templates, ordered by creation date, with the most recently created template appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      InvoiceRenderingTemplatesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InvoiceRenderingTemplatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<InvoiceRenderingTemplatesRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => InvoiceRenderingTemplatesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
