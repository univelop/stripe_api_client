// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/issuing/physical_bundle.dart';
import './with_physical_bundle_get_request_body.dart';
import './with_physical_bundle_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\physical_bundles\{physical_bundle}
class WithPhysicalBundleItemRequestBuilder
    extends BaseRequestBuilder<WithPhysicalBundleItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithPhysicalBundleItemRequestBuilder clone() {
    return WithPhysicalBundleItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPhysicalBundleItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPhysicalBundleItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/physical_bundles/{physical_bundle}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPhysicalBundleItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPhysicalBundleItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/physical_bundles/{physical_bundle}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a physical bundle object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PhysicalBundle?> getAsync(WithPhysicalBundleGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPhysicalBundleItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PhysicalBundle>(
        requestInfo, PhysicalBundle.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a physical bundle object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithPhysicalBundleGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPhysicalBundleItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithPhysicalBundleItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithPhysicalBundleItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
