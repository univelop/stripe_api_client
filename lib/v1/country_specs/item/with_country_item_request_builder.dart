// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/country_spec.dart';
import '../../../models/error.dart';
import './with_country_get_request_body.dart';
import './with_country_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\country_specs\{country}
class WithCountryItemRequestBuilder
    extends BaseRequestBuilder<WithCountryItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithCountryItemRequestBuilder clone() {
    return WithCountryItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCountryItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCountryItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/country_specs/{country}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithCountryItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCountryItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/country_specs/{country}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a Country Spec for a given Country code.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CountrySpec?> getAsync(WithCountryGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCountryItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CountrySpec>(
        requestInfo, CountrySpec.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a Country Spec for a given Country code.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithCountryGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCountryItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithCountryItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithCountryItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
