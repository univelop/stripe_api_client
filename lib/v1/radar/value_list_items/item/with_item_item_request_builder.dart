// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/deleted_radar/value_list_item.dart'
    as apisdk_models_deleted_radar_valuelistitem;
import '../../../../models/error.dart';
import '../../../../models/radar/value_list_item.dart'
    as apisdk_models_radar_valuelistitem;
import './with_item_delete_request_body.dart';
import './with_item_get_request_body.dart';
import './with_item_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar\value_list_items\{item}
class WithItemItemRequestBuilder
    extends BaseRequestBuilder<WithItemItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithItemItemRequestBuilder clone() {
    return WithItemItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithItemItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithItemItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_list_items/{item}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithItemItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithItemItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_list_items/{item}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes a <code>ValueListItem</code> object, removing it from its parent value list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_deleted_radar_valuelistitem.ValueListItem?> deleteAsync(
      WithItemDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter
        .send<apisdk_models_deleted_radar_valuelistitem.ValueListItem>(
            requestInfo,
            apisdk_models_deleted_radar_valuelistitem
                .ValueListItem.createFromDiscriminatorValue,
            errorMapping);
  }

  /// <p>Retrieves a <code>ValueListItem</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_radar_valuelistitem.ValueListItem?> getAsync(
      WithItemGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithItemItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter
        .send<apisdk_models_radar_valuelistitem.ValueListItem>(
            requestInfo,
            apisdk_models_radar_valuelistitem
                .ValueListItem.createFromDiscriminatorValue,
            errorMapping);
  }

  /// <p>Deletes a <code>ValueListItem</code> object, removing it from its parent value list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(WithItemDeleteRequestBody body,
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

  /// <p>Retrieves a <code>ValueListItem</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithItemGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithItemItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithItemItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithItemItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
