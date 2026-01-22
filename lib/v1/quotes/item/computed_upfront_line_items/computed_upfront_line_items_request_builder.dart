// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './computed_upfront_line_items_get_request_body.dart';
import './computed_upfront_line_items_get_response.dart';
import './computed_upfront_line_items_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\quotes\{quote}\computed_upfront_line_items
class ComputedUpfrontLineItemsRequestBuilder
    extends BaseRequestBuilder<ComputedUpfrontLineItemsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ComputedUpfrontLineItemsRequestBuilder clone() {
    return ComputedUpfrontLineItemsRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [ComputedUpfrontLineItemsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ComputedUpfrontLineItemsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/quotes/{quote}/computed_upfront_line_items{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ComputedUpfrontLineItemsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ComputedUpfrontLineItemsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/quotes/{quote}/computed_upfront_line_items{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>When retrieving a quote, there is an includable <a href="https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items"><strong>computed.upfront.line_items</strong></a> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ComputedUpfrontLineItemsGetResponse?> getAsync(
      ComputedUpfrontLineItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ComputedUpfrontLineItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ComputedUpfrontLineItemsGetResponse>(
        requestInfo,
        ComputedUpfrontLineItemsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>When retrieving a quote, there is an includable <a href="https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items"><strong>computed.upfront.line_items</strong></a> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      ComputedUpfrontLineItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ComputedUpfrontLineItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<ComputedUpfrontLineItemsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => ComputedUpfrontLineItemsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
