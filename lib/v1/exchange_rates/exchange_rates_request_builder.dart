// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './exchange_rates_get_request_body.dart';
import './exchange_rates_get_response.dart';
import './exchange_rates_request_builder_get_query_parameters.dart';
import './item/with_rate_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\exchange_rates
class ExchangeRatesRequestBuilder
    extends BaseRequestBuilder<ExchangeRatesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.exchange_rates.item collection
  ///  [rateId] Unique identifier of the item
  WithRateItemRequestBuilder byRateId(String rateId) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('rate_id', () => rateId);
    return WithRateItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ExchangeRatesRequestBuilder clone() {
    return ExchangeRatesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ExchangeRatesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExchangeRatesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/exchange_rates{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ExchangeRatesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExchangeRatesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/exchange_rates{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>[Deprecated] The <code>ExchangeRate</code> APIs are deprecated. Please use the <a href="https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api">FX Quotes API</a> instead.</p><p>Returns a list of objects that contain the rates at which foreign currencies are converted to one another. Only shows the currencies for which Stripe supports.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ExchangeRatesGetResponse?> getAsync(ExchangeRatesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ExchangeRatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ExchangeRatesGetResponse>(requestInfo,
        ExchangeRatesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>[Deprecated] The <code>ExchangeRate</code> APIs are deprecated. Please use the <a href="https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api">FX Quotes API</a> instead.</p><p>Returns a list of objects that contain the rates at which foreign currencies are converted to one another. Only shows the currencies for which Stripe supports.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ExchangeRatesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ExchangeRatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ExchangeRatesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ExchangeRatesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
