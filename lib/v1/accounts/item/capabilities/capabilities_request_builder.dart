// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './capabilities_get_request_body.dart';
import './capabilities_get_response.dart';
import './capabilities_request_builder_get_query_parameters.dart';
import './item/with_capability_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\capabilities
class CapabilitiesRequestBuilder
    extends BaseRequestBuilder<CapabilitiesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.accounts.item.capabilities.item collection
  ///  [capability] Unique identifier of the item
  WithCapabilityItemRequestBuilder byCapability(String capability) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('capability', () => capability);
    return WithCapabilityItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CapabilitiesRequestBuilder clone() {
    return CapabilitiesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CapabilitiesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CapabilitiesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/capabilities{?expand*}",
            pathParameters);

  /// Instantiates a new [CapabilitiesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CapabilitiesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/capabilities{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CapabilitiesGetResponse?> getAsync(CapabilitiesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CapabilitiesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CapabilitiesGetResponse>(requestInfo,
        CapabilitiesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CapabilitiesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CapabilitiesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CapabilitiesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CapabilitiesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
