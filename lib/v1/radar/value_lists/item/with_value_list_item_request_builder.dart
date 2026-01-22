// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/deleted_radar/value_list.dart'
    as apisdk_models_deleted_radar_valuelist;
import '../../../../models/error.dart';
import '../../../../models/radar/value_list.dart'
    as apisdk_models_radar_valuelist;
import './with_value_list_delete_request_body.dart';
import './with_value_list_get_request_body.dart';
import './with_value_list_item_request_builder_get_query_parameters.dart';
import './with_value_list_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar\value_lists\{value_list}
class WithValueListItemRequestBuilder
    extends BaseRequestBuilder<WithValueListItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithValueListItemRequestBuilder clone() {
    return WithValueListItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithValueListItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithValueListItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_lists/{value_list}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithValueListItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithValueListItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/value_lists/{value_list}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes a <code>ValueList</code> object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_deleted_radar_valuelist.ValueList?> deleteAsync(
      WithValueListDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter
        .send<apisdk_models_deleted_radar_valuelist.ValueList>(
            requestInfo,
            apisdk_models_deleted_radar_valuelist
                .ValueList.createFromDiscriminatorValue,
            errorMapping);
  }

  /// <p>Retrieves a <code>ValueList</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_radar_valuelist.ValueList?> getAsync(
      WithValueListGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithValueListItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<apisdk_models_radar_valuelist.ValueList>(
        requestInfo,
        apisdk_models_radar_valuelist.ValueList.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Updates a <code>ValueList</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that <code>item_type</code> is immutable.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_radar_valuelist.ValueList?> postAsync(
      WithValueListPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<apisdk_models_radar_valuelist.ValueList>(
        requestInfo,
        apisdk_models_radar_valuelist.ValueList.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Deletes a <code>ValueList</code> object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithValueListDeleteRequestBody body,
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

  /// <p>Retrieves a <code>ValueList</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithValueListGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithValueListItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithValueListItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithValueListItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a <code>ValueList</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that <code>item_type</code> is immutable.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithValueListPostRequestBody body,
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
