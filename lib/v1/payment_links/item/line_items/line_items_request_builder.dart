// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './line_items_get_request_body.dart';
import './line_items_get_response.dart';
import './line_items_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_links\{payment_link}\line_items
class LineItemsRequestBuilder
    extends BaseRequestBuilder<LineItemsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  LineItemsRequestBuilder clone() {
    return LineItemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [LineItemsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LineItemsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_links/{payment_link}/line_items{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [LineItemsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LineItemsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_links/{payment_link}/line_items{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>When retrieving a payment link, there is an includable <strong>line_items</strong> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<LineItemsGetResponse?> getAsync(LineItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<LineItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<LineItemsGetResponse>(requestInfo,
        LineItemsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>When retrieving a payment link, there is an includable <strong>line_items</strong> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(LineItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<LineItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<LineItemsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => LineItemsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
