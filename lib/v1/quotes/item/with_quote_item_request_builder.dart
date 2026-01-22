// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/quote.dart';
import './accept/accept_request_builder.dart';
import './cancel/cancel_request_builder.dart';
import './computed_upfront_line_items/computed_upfront_line_items_request_builder.dart';
import './finalize/finalize_request_builder.dart';
import './line_items/line_items_request_builder.dart';
import './pdf/pdf_request_builder.dart';
import './with_quote_get_request_body.dart';
import './with_quote_item_request_builder_get_query_parameters.dart';
import './with_quote_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\quotes\{quote}
class WithQuoteItemRequestBuilder
    extends BaseRequestBuilder<WithQuoteItemRequestBuilder> {
  ///  The accept property
  AcceptRequestBuilder get accept {
    return AcceptRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The cancel property
  CancelRequestBuilder get cancel {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The computed_upfront_line_items property
  ComputedUpfrontLineItemsRequestBuilder get computedUpfrontLineItems {
    return ComputedUpfrontLineItemsRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The finalize property
  FinalizeRequestBuilder get finalize {
    return FinalizeRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The line_items property
  LineItemsRequestBuilder get lineItems {
    return LineItemsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The pdf property
  PdfRequestBuilder get pdf {
    return PdfRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithQuoteItemRequestBuilder clone() {
    return WithQuoteItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithQuoteItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithQuoteItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/quotes/{quote}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithQuoteItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithQuoteItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/quotes/{quote}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the quote with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Quote?> getAsync(WithQuoteGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithQuoteItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Quote>(
        requestInfo, Quote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>A quote models prices and services for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Quote?> postAsync(WithQuotePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Quote>(
        requestInfo, Quote.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the quote with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithQuoteGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithQuoteItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithQuoteItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithQuoteItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>A quote models prices and services for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithQuotePostRequestBody body,
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
