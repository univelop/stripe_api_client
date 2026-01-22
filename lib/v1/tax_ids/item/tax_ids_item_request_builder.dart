// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/deleted_tax_id.dart';
import '../../../models/error.dart';
import '../../../models/tax_id.dart';
import './tax_ids_delete_request_body.dart';
import './tax_ids_get_request_body.dart';
import './tax_ids_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax_ids\{id}
class TaxIdsItemRequestBuilder
    extends BaseRequestBuilder<TaxIdsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  TaxIdsItemRequestBuilder clone() {
    return TaxIdsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TaxIdsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxIdsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax_ids/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [TaxIdsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxIdsItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax_ids/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes an existing account or customer <code>tax_id</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedTaxId?> deleteAsync(TaxIdsDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedTaxId>(
        requestInfo, DeletedTaxId.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an account or customer <code>tax_id</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxId?> getAsync(TaxIdsGetRequestBody body,
      [void Function(
              RequestConfiguration<TaxIdsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxId>(
        requestInfo, TaxId.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Deletes an existing account or customer <code>tax_id</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(TaxIdsDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves an account or customer <code>tax_id</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TaxIdsGetRequestBody body,
      [void Function(
              RequestConfiguration<TaxIdsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TaxIdsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => TaxIdsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
