// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/billing/alert.dart';
import '../../../models/error.dart';
import './alerts_get_request_body.dart';
import './alerts_get_response.dart';
import './alerts_post_request_body.dart';
import './alerts_request_builder_get_query_parameters.dart';
import './item/alerts_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\alerts
class AlertsRequestBuilder extends BaseRequestBuilder<AlertsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.billing.alerts.item collection
  ///  [id] Unique identifier of the item
  AlertsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return AlertsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  AlertsRequestBuilder clone() {
    return AlertsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AlertsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AlertsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/alerts{?alert_type*,ending_before*,expand*,limit*,meter*,starting_after*}",
            pathParameters);

  /// Instantiates a new [AlertsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AlertsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/alerts{?alert_type*,ending_before*,expand*,limit*,meter*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists billing active and inactive alerts</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<AlertsGetResponse?> getAsync(AlertsGetRequestBody body,
      [void Function(
              RequestConfiguration<AlertsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<AlertsGetResponse>(requestInfo,
        AlertsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a billing alert</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Alert?> postAsync(AlertsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Alert>(
        requestInfo, Alert.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists billing active and inactive alerts</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(AlertsGetRequestBody body,
      [void Function(
              RequestConfiguration<AlertsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<AlertsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => AlertsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a billing alert</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(AlertsPostRequestBody body,
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
