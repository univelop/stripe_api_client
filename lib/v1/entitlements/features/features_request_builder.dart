// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/entitlements/feature.dart';
import '../../../models/error.dart';
import './features_get_request_body.dart';
import './features_get_response.dart';
import './features_post_request_body.dart';
import './features_request_builder_get_query_parameters.dart';
import './item/features_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\entitlements\features
class FeaturesRequestBuilder
    extends BaseRequestBuilder<FeaturesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.entitlements.features.item collection
  ///  [id] The ID of the feature.
  FeaturesItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return FeaturesItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FeaturesRequestBuilder clone() {
    return FeaturesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FeaturesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FeaturesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/entitlements/features{?archived*,ending_before*,expand*,limit*,lookup_key*,starting_after*}",
            pathParameters);

  /// Instantiates a new [FeaturesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FeaturesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/entitlements/features{?archived*,ending_before*,expand*,limit*,lookup_key*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a list of features</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FeaturesGetResponse?> getAsync(FeaturesGetRequestBody body,
      [void Function(
              RequestConfiguration<FeaturesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FeaturesGetResponse>(requestInfo,
        FeaturesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a feature</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Feature?> postAsync(FeaturesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Feature>(
        requestInfo, Feature.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a list of features</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(FeaturesGetRequestBody body,
      [void Function(
              RequestConfiguration<FeaturesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FeaturesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => FeaturesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a feature</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(FeaturesPostRequestBody body,
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
