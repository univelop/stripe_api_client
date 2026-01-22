// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/terminal/location.dart';
import './item/with_location_item_request_builder.dart';
import './locations_get_request_body.dart';
import './locations_get_response.dart';
import './locations_post_request_body.dart';
import './locations_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\terminal\locations
class LocationsRequestBuilder
    extends BaseRequestBuilder<LocationsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.terminal.locations.item collection
  ///  [location] Unique identifier of the item
  WithLocationItemRequestBuilder byLocation(String location) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('location', () => location);
    return WithLocationItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  LocationsRequestBuilder clone() {
    return LocationsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [LocationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LocationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/locations{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [LocationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  LocationsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/locations{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of <code>Location</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<LocationsGetResponse?> getAsync(LocationsGetRequestBody body,
      [void Function(
              RequestConfiguration<LocationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<LocationsGetResponse>(requestInfo,
        LocationsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <code>Location</code> object.For further details, including which address fields are required in each country, see the <a href="/docs/terminal/fleet/locations">Manage locations</a> guide.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Location?> postAsync(LocationsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Location>(
        requestInfo, Location.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of <code>Location</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(LocationsGetRequestBody body,
      [void Function(
              RequestConfiguration<LocationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<LocationsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => LocationsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <code>Location</code> object.For further details, including which address fields are required in each country, see the <a href="/docs/terminal/fleet/locations">Manage locations</a> guide.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(LocationsPostRequestBody body,
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
