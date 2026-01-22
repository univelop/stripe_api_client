// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/plan.dart';
import './item/with_plan_item_request_builder.dart';
import './plans_get_request_body.dart';
import './plans_get_response.dart';
import './plans_post_request_body.dart';
import './plans_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\plans
class PlansRequestBuilder extends BaseRequestBuilder<PlansRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.plans.item collection
  ///  [plan] Unique identifier of the item
  WithPlanItemRequestBuilder byPlan(String plan) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('plan', () => plan);
    return WithPlanItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PlansRequestBuilder clone() {
    return PlansRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PlansRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PlansRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/plans{?active*,created*,ending_before*,expand*,limit*,product*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PlansRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PlansRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/plans{?active*,created*,ending_before*,expand*,limit*,product*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your plans.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PlansGetResponse?> getAsync(PlansGetRequestBody body,
      [void Function(
              RequestConfiguration<PlansRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PlansGetResponse>(requestInfo,
        PlansGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can now model subscriptions more flexibly using the <a href="#prices">Prices API</a>. It replaces the Plans API and is backwards compatible to simplify your migration.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Plan?> postAsync(PlansPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Plan>(
        requestInfo, Plan.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your plans.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PlansGetRequestBody body,
      [void Function(
              RequestConfiguration<PlansRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PlansRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PlansRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>You can now model subscriptions more flexibly using the <a href="#prices">Prices API</a>. It replaces the Plans API and is backwards compatible to simplify your migration.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PlansPostRequestBody body,
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
