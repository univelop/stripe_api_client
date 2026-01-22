// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/topup.dart';
import './item/with_topup_item_request_builder.dart';
import './topups_get_request_body.dart';
import './topups_get_response.dart';
import './topups_post_request_body.dart';
import './topups_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\topups
class TopupsRequestBuilder extends BaseRequestBuilder<TopupsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.topups.item collection
  ///  [topup] Unique identifier of the item
  WithTopupItemRequestBuilder byTopup(String topup) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('topup', () => topup);
    return WithTopupItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TopupsRequestBuilder clone() {
    return TopupsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TopupsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TopupsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/topups{?amount*,created*,ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [TopupsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TopupsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/topups{?amount*,created*,ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of top-ups.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TopupsGetResponse?> getAsync(TopupsGetRequestBody body,
      [void Function(
              RequestConfiguration<TopupsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TopupsGetResponse>(requestInfo,
        TopupsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Top up the balance of an account</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Topup?> postAsync(TopupsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Topup>(
        requestInfo, Topup.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of top-ups.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TopupsGetRequestBody body,
      [void Function(
              RequestConfiguration<TopupsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TopupsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => TopupsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Top up the balance of an account</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(TopupsPostRequestBody body,
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
