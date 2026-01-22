// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/invoice_rendering_template.dart';
import './archive/archive_request_builder.dart';
import './unarchive/unarchive_request_builder.dart';
import './with_template_get_request_body.dart';
import './with_template_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoice_rendering_templates\{template}
class WithTemplateItemRequestBuilder
    extends BaseRequestBuilder<WithTemplateItemRequestBuilder> {
  ///  The archive property
  ArchiveRequestBuilder get archive {
    return ArchiveRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The unarchive property
  UnarchiveRequestBuilder get unarchive {
    return UnarchiveRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithTemplateItemRequestBuilder clone() {
    return WithTemplateItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithTemplateItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTemplateItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_rendering_templates/{template}{?expand*,version*}",
            pathParameters);

  /// Instantiates a new [WithTemplateItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTemplateItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoice_rendering_templates/{template}{?expand*,version*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves an invoice rendering template with the given ID. It by default returns the latest version of the template. Optionally, specify a version to see previous versions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InvoiceRenderingTemplate?> getAsync(WithTemplateGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTemplateItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InvoiceRenderingTemplate>(requestInfo,
        InvoiceRenderingTemplate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an invoice rendering template with the given ID. It by default returns the latest version of the template. Optionally, specify a version to see previous versions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithTemplateGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTemplateItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithTemplateItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithTemplateItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
