// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_physical_bundle_item_request_builder.dart';
import './physical_bundles_get_request_body.dart';
import './physical_bundles_get_response.dart';
import './physical_bundles_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\physical_bundles
class PhysicalBundlesRequestBuilder
    extends BaseRequestBuilder<PhysicalBundlesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.physical_bundles.item collection
  ///  [physicalBundle] Unique identifier of the item
  WithPhysicalBundleItemRequestBuilder byPhysicalBundle(String physicalBundle) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('physical_bundle', () => physicalBundle);
    return WithPhysicalBundleItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PhysicalBundlesRequestBuilder clone() {
    return PhysicalBundlesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PhysicalBundlesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PhysicalBundlesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/physical_bundles{?ending_before*,expand*,limit*,starting_after*,status*,type*}",
            pathParameters);

  /// Instantiates a new [PhysicalBundlesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PhysicalBundlesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/physical_bundles{?ending_before*,expand*,limit*,starting_after*,status*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of physical bundle objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PhysicalBundlesGetResponse?> getAsync(
      PhysicalBundlesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PhysicalBundlesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PhysicalBundlesGetResponse>(requestInfo,
        PhysicalBundlesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of physical bundle objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PhysicalBundlesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PhysicalBundlesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PhysicalBundlesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PhysicalBundlesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
