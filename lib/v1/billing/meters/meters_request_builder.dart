// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/billing/meter.dart';
import '../../../models/error.dart';
import './item/meters_item_request_builder.dart';
import './meters_get_request_body.dart';
import './meters_get_response.dart';
import './meters_post_request_body.dart';
import './meters_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\meters
class MetersRequestBuilder extends BaseRequestBuilder<MetersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.billing.meters.item collection
  ///  [id] Unique identifier of the item
  MetersItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return MetersItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  MetersRequestBuilder clone() {
    return MetersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MetersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MetersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/meters{?ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [MetersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MetersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/meters{?ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a list of billing meters.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<MetersGetResponse?> getAsync(MetersGetRequestBody body,
      [void Function(
              RequestConfiguration<MetersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<MetersGetResponse>(requestInfo,
        MetersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a billing meter.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Meter?> postAsync(MetersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Meter>(
        requestInfo, Meter.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a list of billing meters.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(MetersGetRequestBody body,
      [void Function(
              RequestConfiguration<MetersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<MetersRequestBuilderGetQueryParameters>(
        requestConfiguration, () => MetersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a billing meter.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(MetersPostRequestBody body,
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
