// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/exchange_rate.dart';
import './with_rate_get_request_body.dart';
import './with_rate_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\exchange_rates\{rate_id}
class WithRateItemRequestBuilder
    extends BaseRequestBuilder<WithRateItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithRateItemRequestBuilder clone() {
    return WithRateItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithRateItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithRateItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter,
            "{+baseurl}/v1/exchange_rates/{rate_id}{?expand*}", pathParameters);

  /// Instantiates a new [WithRateItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithRateItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/exchange_rates/{rate_id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>[Deprecated] The <code>ExchangeRate</code> APIs are deprecated. Please use the <a href="https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api">FX Quotes API</a> instead.</p><p>Retrieves the exchange rates from the given currency to every supported currency.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ExchangeRate?> getAsync(WithRateGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithRateItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ExchangeRate>(
        requestInfo, ExchangeRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>[Deprecated] The <code>ExchangeRate</code> APIs are deprecated. Please use the <a href="https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api">FX Quotes API</a> instead.</p><p>Retrieves the exchange rates from the given currency to every supported currency.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithRateGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithRateItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithRateItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithRateItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
