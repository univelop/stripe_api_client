// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/tax_rate.dart';
import './item/with_tax_rate_item_request_builder.dart';
import './tax_rates_get_request_body.dart';
import './tax_rates_get_response.dart';
import './tax_rates_post_request_body.dart';
import './tax_rates_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax_rates
class TaxRatesRequestBuilder
    extends BaseRequestBuilder<TaxRatesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.tax_rates.item collection
  ///  [taxRate] Unique identifier of the item
  WithTaxRateItemRequestBuilder byTaxRate(String taxRate) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('tax_rate', () => taxRate);
    return WithTaxRateItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TaxRatesRequestBuilder clone() {
    return TaxRatesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TaxRatesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxRatesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/tax_rates{?active*,created*,ending_before*,expand*,inclusive*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [TaxRatesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxRatesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/tax_rates{?active*,created*,ending_before*,expand*,inclusive*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxRatesGetResponse?> getAsync(TaxRatesGetRequestBody body,
      [void Function(
              RequestConfiguration<TaxRatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxRatesGetResponse>(requestInfo,
        TaxRatesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new tax rate.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxRate?> postAsync(TaxRatesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxRate>(
        requestInfo, TaxRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TaxRatesGetRequestBody body,
      [void Function(
              RequestConfiguration<TaxRatesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TaxRatesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => TaxRatesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new tax rate.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(TaxRatesPostRequestBody body,
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
