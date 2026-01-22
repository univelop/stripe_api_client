// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './country_specs_get_request_body.dart';
import './country_specs_get_response.dart';
import './country_specs_request_builder_get_query_parameters.dart';
import './item/with_country_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\country_specs
class CountrySpecsRequestBuilder
    extends BaseRequestBuilder<CountrySpecsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.country_specs.item collection
  ///  [country] Unique identifier of the item
  WithCountryItemRequestBuilder byCountry(String country) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('country', () => country);
    return WithCountryItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CountrySpecsRequestBuilder clone() {
    return CountrySpecsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CountrySpecsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CountrySpecsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/country_specs{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [CountrySpecsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CountrySpecsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/country_specs{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all Country Spec objects available in the API.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CountrySpecsGetResponse?> getAsync(CountrySpecsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CountrySpecsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CountrySpecsGetResponse>(requestInfo,
        CountrySpecsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists all Country Spec objects available in the API.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CountrySpecsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CountrySpecsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CountrySpecsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CountrySpecsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
