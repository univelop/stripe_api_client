// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './lines_get_request_body.dart';
import './lines_get_response.dart';
import './lines_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\credit_notes\preview\lines
class LinesRequestBuilder extends BaseRequestBuilder<LinesRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  LinesRequestBuilder clone() {
    return LinesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [LinesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LinesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes/preview/lines?invoice={invoice}{&amount*,credit_amount*,effective_at*,email_type*,ending_before*,expand*,limit*,lines*,memo*,metadata*,out_of_band_amount*,reason*,refund_amount*,refunds*,shipping_cost*,starting_after*}",
            pathParameters);

  /// Instantiates a new [LinesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LinesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/credit_notes/preview/lines?invoice={invoice}{&amount*,credit_amount*,effective_at*,email_type*,ending_before*,expand*,limit*,lines*,memo*,metadata*,out_of_band_amount*,reason*,refund_amount*,refunds*,shipping_cost*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>When retrieving a credit note preview, you’ll get a <strong>lines</strong> property containing the first handful of those items. This URL you can retrieve the full (paginated) list of line items.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<LinesGetResponse?> getAsync(LinesGetRequestBody body,
      [void Function(
              RequestConfiguration<LinesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<LinesGetResponse>(requestInfo,
        LinesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>When retrieving a credit note preview, you’ll get a <strong>lines</strong> property containing the first handful of those items. This URL you can retrieve the full (paginated) list of line items.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(LinesGetRequestBody body,
      [void Function(
              RequestConfiguration<LinesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<LinesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => LinesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
