// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/quote.dart';
import './item/with_quote_item_request_builder.dart';
import './quotes_get_request_body.dart';
import './quotes_get_response.dart';
import './quotes_post_request_body.dart';
import './quotes_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\quotes
class QuotesRequestBuilder extends BaseRequestBuilder<QuotesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.quotes.item collection
  ///  [quote] Unique identifier of the item
  WithQuoteItemRequestBuilder byQuote(String quote) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('quote', () => quote);
    return WithQuoteItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  QuotesRequestBuilder clone() {
    return QuotesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [QuotesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  QuotesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/quotes{?customer*,customer_account*,ending_before*,expand*,limit*,starting_after*,status*,test_clock*}",
            pathParameters);

  /// Instantiates a new [QuotesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  QuotesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/quotes{?customer*,customer_account*,ending_before*,expand*,limit*,starting_after*,status*,test_clock*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your quotes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<QuotesGetResponse?> getAsync(QuotesGetRequestBody body,
      [void Function(
              RequestConfiguration<QuotesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<QuotesGetResponse>(requestInfo,
        QuotesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>A quote models prices and services for a customer. Default options for <code>header</code>, <code>description</code>, <code>footer</code>, and <code>expires_at</code> can be set in the dashboard via the <a href="https://dashboard.stripe.com/settings/billing/quote">quote template</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Quote?> postAsync(QuotesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Quote>(
        requestInfo, Quote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your quotes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(QuotesGetRequestBody body,
      [void Function(
              RequestConfiguration<QuotesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<QuotesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => QuotesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>A quote models prices and services for a customer. Default options for <code>header</code>, <code>description</code>, <code>footer</code>, and <code>expires_at</code> can be set in the dashboard via the <a href="https://dashboard.stripe.com/settings/billing/quote">quote template</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(QuotesPostRequestBody body,
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
