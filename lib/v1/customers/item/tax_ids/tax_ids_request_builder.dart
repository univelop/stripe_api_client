// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tax_id.dart';
import './item/tax_ids_item_request_builder.dart';
import './tax_ids_get_request_body.dart';
import './tax_ids_get_response.dart';
import './tax_ids_post_request_body.dart';
import './tax_ids_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\tax_ids
class TaxIdsRequestBuilder extends BaseRequestBuilder<TaxIdsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.tax_ids.item collection
  ///  [id] Unique identifier of the item
  TaxIdsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return TaxIdsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TaxIdsRequestBuilder clone() {
    return TaxIdsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TaxIdsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxIdsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/tax_ids{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [TaxIdsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxIdsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/tax_ids{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of tax IDs for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxIdsGetResponse?> getAsync(Tax_idsGetRequestBody body,
      [void Function(
              RequestConfiguration<TaxIdsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxIdsGetResponse>(requestInfo,
        TaxIdsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <code>tax_id</code> object for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxId?> postAsync(TaxIdsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxId>(
        requestInfo, TaxId.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of tax IDs for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(Tax_idsGetRequestBody body,
      [void Function(
              RequestConfiguration<TaxIdsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TaxIdsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => TaxIdsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <code>tax_id</code> object for a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(TaxIdsPostRequestBody body,
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
