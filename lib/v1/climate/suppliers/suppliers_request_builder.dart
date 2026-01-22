// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/with_supplier_item_request_builder.dart';
import './suppliers_get_request_body.dart';
import './suppliers_get_response.dart';
import './suppliers_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate\suppliers
class SuppliersRequestBuilder
    extends BaseRequestBuilder<SuppliersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.climate.suppliers.item collection
  ///  [supplier] Unique identifier of the item
  WithSupplierItemRequestBuilder bySupplier(String supplier) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('supplier', () => supplier);
    return WithSupplierItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SuppliersRequestBuilder clone() {
    return SuppliersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SuppliersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SuppliersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/suppliers{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SuppliersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SuppliersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/suppliers{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all available Climate supplier objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SuppliersGetResponse?> getAsync(SuppliersGetRequestBody body,
      [void Function(
              RequestConfiguration<SuppliersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SuppliersGetResponse>(requestInfo,
        SuppliersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists all available Climate supplier objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SuppliersGetRequestBody body,
      [void Function(
              RequestConfiguration<SuppliersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SuppliersRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => SuppliersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
