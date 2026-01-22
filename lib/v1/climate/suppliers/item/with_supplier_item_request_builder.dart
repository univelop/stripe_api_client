// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/climate/supplier.dart';
import '../../../../models/error.dart';
import './with_supplier_get_request_body.dart';
import './with_supplier_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\climate\suppliers\{supplier}
class WithSupplierItemRequestBuilder
    extends BaseRequestBuilder<WithSupplierItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithSupplierItemRequestBuilder clone() {
    return WithSupplierItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSupplierItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSupplierItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/suppliers/{supplier}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithSupplierItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSupplierItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/climate/suppliers/{supplier}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a Climate supplier object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Supplier?> getAsync(WithSupplierGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSupplierItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Supplier>(
        requestInfo, Supplier.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a Climate supplier object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithSupplierGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSupplierItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithSupplierItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithSupplierItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
